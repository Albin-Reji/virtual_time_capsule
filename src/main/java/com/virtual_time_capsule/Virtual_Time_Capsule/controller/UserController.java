package com.virtual_time_capsule.Virtual_Time_Capsule.controller;

import java.io.IOException;
import java.security.Principal;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.virtual_time_capsule.Virtual_Time_Capsule.model.ExpiredCapsule;
import com.virtual_time_capsule.Virtual_Time_Capsule.model.MessageCapsule;
import com.virtual_time_capsule.Virtual_Time_Capsule.model.User;
import com.virtual_time_capsule.Virtual_Time_Capsule.service.ExpiredCapsuleService;
import com.virtual_time_capsule.Virtual_Time_Capsule.service.MessageCapsuleService;
import com.virtual_time_capsule.Virtual_Time_Capsule.service.UserService;

import jakarta.servlet.http.HttpSession;
import lombok.experimental.PackagePrivate;

@RequestMapping("/")
@Controller
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    JwtService jwtService;
    
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private MessageCapsuleService messageCapsuleService;
    
    @Autowired
    private ExpiredCapsuleService expiredCapsuleService;

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/register")
    public String showRegistrationForm() {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(User user, Model model) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        try {
            userService.saveUser(user);
            return "redirect:/login";
        } catch (Exception e) {
            model.addAttribute("error", "Registration failed. Try again.");
            return "register";
        }
    }

    @GetMapping("/login")
    public String getLogin() {
        return "signin";
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestParam String username, @RequestParam String password) {
        Authentication authentication = authenticationManager.authenticate(
            new UsernamePasswordAuthenticationToken(username, password)
        );

        if (authentication.isAuthenticated()) {
            String token = jwtService.generateToken(username);
            return ResponseEntity.ok(Collections.singletonMap("token", token));
        }

        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid credentials");
    }

    @GetMapping("/user")
    public String getUserPage(HttpSession session, Principal user) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication == null || !authentication.isAuthenticated()) {
            return "redirect:/login";
        }

        Object detailUser = authentication.getPrincipal();
        String username = authentication.getName();
        Optional<User> userDetails = userService.findUser(username);

        String email = null;
        String imageUrl = null;
        boolean isOauthUser = false;

        if (userDetails.isPresent()) {
            email = userDetails.get().getEmail();
        } else {
            session.setAttribute("error", "User not found.");
        }

        if (detailUser instanceof OAuth2User) {
            OAuth2User oAuth2User = (OAuth2User) detailUser;
            username = oAuth2User.getAttribute("name");
            email = oAuth2User.getAttribute("email");
            imageUrl = oAuth2User.getAttribute("picture");
            isOauthUser = true;
        }

        session.setAttribute("username", username);
        session.setAttribute("imageUrl", imageUrl);
        session.setAttribute("email", email);
        session.setAttribute("isOauthUser", isOauthUser);

        return "userpage";
    }

    @GetMapping("/profile")
    public String getProfile() {
        return "profile";
    }

    @PostMapping("{email}/store-message")
    public String storeMessage(
            @PathVariable("email") String userEmail,
            @RequestParam("recipient") String recipient,
            @RequestParam("subject") String subject,
            @RequestParam("message") String message,
            @RequestParam("sendTime") LocalDateTime sendTime,
            Model model) throws IOException {
        
        MessageCapsule capsule = new MessageCapsule();
        
        String email;
        
        Optional<User> user = userService.findUser(userEmail);
        if (user.isPresent()) {
            email = user.get().getEmail();
        }
        else {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            
            if (authentication != null && authentication instanceof OAuth2AuthenticationToken) {
                // If the user is authenticated via OAuth2, get the OAuth2User object
                OAuth2AuthenticationToken oauthToken = (OAuth2AuthenticationToken) authentication;
                OAuth2User oauthUser = oauthToken.getPrincipal();
                
                // Retrieve the email from the OAuth2User's attributes (assuming it's stored under "email")
                email = oauthUser.getAttribute("email");   
            }
            else {
            	email="albinrejim302003@gmail.com";
            }

        }
        capsule.setSenderEmail(email);
        capsule.setRecieverEmail(recipient);
        capsule.setMessage(message);
        capsule.setSubject(subject);
        capsule.setSendTime(sendTime);

        messageCapsuleService.saveMessageCapsule(capsule);
        return "success";
    }

    @GetMapping("/{username}/{email}/my-capsules")
    public String myCapsules(@PathVariable("username") String username, @PathVariable("email") String email, Model model) {
        String userEmail = email;
        List<MessageCapsule> capsules = messageCapsuleService.getCapsulesOfUser(userEmail);

        model.addAttribute("capsules", capsules);

        return "mycapsules";
    }
    
    @GetMapping("/{username}/{email}/my-expired-capsules")
    public String getExpiredCapsules(@PathVariable("username") String username, @PathVariable("email") String email, Model model) {
    	List<ExpiredCapsule> capsules=expiredCapsuleService.getExpiredCapsules(email);
    	model.addAttribute("capsules", capsules);

        return "expiredcapsule";
    }
    
   @GetMapping("/{username}/{email}/about")
   public String aboutPage(@PathVariable("username") String username, @PathVariable("email") String email) {
	   return "about";
   }
}
