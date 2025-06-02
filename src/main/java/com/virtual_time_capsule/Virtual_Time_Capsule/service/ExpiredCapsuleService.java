package com.virtual_time_capsule.Virtual_Time_Capsule.service;

import java.io.ObjectInputStream.GetField;
import java.security.PrivateKey;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtual_time_capsule.Virtual_Time_Capsule.model.ExpiredCapsule;
import com.virtual_time_capsule.Virtual_Time_Capsule.repository.ExpiredCapsuleRepository;

@Service
public class ExpiredCapsuleService {

	@Autowired 
	private ExpiredCapsuleRepository expiredCapsuleRepository;
	
	public List<ExpiredCapsule> getExpiredCapsules(String senderEmail){
		return expiredCapsuleRepository.getBySenderEmail(senderEmail);
	}
}
