package com.virtual_time_capsule.Virtual_Time_Capsule.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtual_time_capsule.Virtual_Time_Capsule.model.MessageCapsule;
import com.virtual_time_capsule.Virtual_Time_Capsule.repository.MessageCapsuleRepository;

@Service
public class MessageCapsuleService {

	@Autowired
	private MessageCapsuleRepository messageCapsuleRepository;
	
	//save the capsule 
	public void saveMessageCapsule(MessageCapsule capsule) {
		messageCapsuleRepository.save(capsule);
	}
	
	/*
	 * get all capsule send by user
	 * */
	public List<MessageCapsule> getCapsulesOfUser(String senderEmail){
		return messageCapsuleRepository.findBySenderEmail(senderEmail);
	}
	
	
	public List<MessageCapsule> getCapsulesByTime(LocalDateTime time){
		return messageCapsuleRepository.findCapsulesAfterTime(time);
	}
	
	public void deleteCapsule(MessageCapsule capsule) {
		messageCapsuleRepository.delete(capsule);
	}
	
}
