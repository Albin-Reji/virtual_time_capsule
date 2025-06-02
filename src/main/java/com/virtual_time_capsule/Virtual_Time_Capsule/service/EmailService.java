package com.virtual_time_capsule.Virtual_Time_Capsule.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.virtual_time_capsule.Virtual_Time_Capsule.model.ExpiredCapsule;
import com.virtual_time_capsule.Virtual_Time_Capsule.model.MessageCapsule;
import com.virtual_time_capsule.Virtual_Time_Capsule.repository.ExpiredCapsuleRepository;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailService {
	
	@Autowired
    private JavaMailSender mailSender;

	@Autowired
    private MessageCapsuleService messageCapsuleService;
	
	@Autowired
	private ExpiredCapsuleRepository expiredCapsuleRepository;
	
	@Scheduled(fixedRate = 60000)
    public void sentCapsuleService() {
    	LocalDateTime now = LocalDateTime.now();

        // Fetch capsules scheduled for now or later
        List<MessageCapsule> capsulesToSend = messageCapsuleService.getCapsulesByTime(now);

        for (MessageCapsule capsule : capsulesToSend) {
            sendEmail(capsule);

            // Update the capsule to mark it as sent (you'll need to add a 'sent' field in the model)
            messageCapsuleService.deleteCapsule(capsule);
        }
    }
	
	public void sendEmail(MessageCapsule capsule) {
	    MimeMessage message = mailSender.createMimeMessage();
	    try {
	        MimeMessageHelper helper = new MimeMessageHelper(message, true);  // 'true' to enable multipart

	        helper.setFrom("albinrejim302003@gmail.com");
	        helper.setTo(capsule.getRecieverEmail());
	        helper.setSubject(capsule.getSubject());

	        // HTML content for the email
	        String htmlContent = "<html>" +
	                "<body>" +
	                "<img src='cid:bannerImage' alt='Banner Image' style='width:100%; height:auto;'>" +
	                "<p>" + capsule.getMessage() + "</p><br>"
	                		+ "Thankyou <br><br>" +
	                "<p><strong>Use Virtual Time Capsule to preserve your memories.</strong><br>" +
	                "Send messages, photos, and more into the future, where they’ll be waiting for you.</p><br>"+
	                "<p><strong>Unlock the future today – Use Virtual Time Capsule to store your memories and send them to yourself or loved ones at the perfect moment!</strong></p>"+
	                "</body>" +
	                "</html>";

	        helper.setText(htmlContent, true);  // true indicates it's HTML

	        // Attach the banner image (using classpath for example)
	        ClassPathResource bannerImage = new ClassPathResource("static/virtual_time_capsule.png");  // Image should be in resources folder
	        helper.addInline("bannerImage", bannerImage);

	        mailSender.send(message);
	        
	        // Handle expired capsule storage after sending the email
	        ExpiredCapsule expiredCapsule = getExpiredCapsule(capsule);
	        expiredCapsuleRepository.save(expiredCapsule);
	        System.out.println("Email sent to: " + capsule.getRecieverEmail());
	    } catch (MessagingException e) {
	        System.err.println("Failed to send email: " + e.getMessage());
	    }
	}
    
    public ExpiredCapsule getExpiredCapsule(MessageCapsule capsule) {
    	ExpiredCapsule expiredCapsule=new ExpiredCapsule();
    	expiredCapsule.setMessage(capsule.getMessage());
    	expiredCapsule.setRecieverEmail(capsule.getRecieverEmail());
    	expiredCapsule.setSendTime(capsule.getSendTime());
    	expiredCapsule.setSenderEmail(capsule.getSenderEmail());
    	expiredCapsule.setSubject(capsule.getSubject());
    	
    	return expiredCapsule;
    }
}
