package com.virtual_time_capsule.Virtual_Time_Capsule.repository;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.virtual_time_capsule.Virtual_Time_Capsule.model.MessageCapsule;

@Repository
public interface MessageCapsuleRepository extends JpaRepository<MessageCapsule, Long>{

	@Query("SELECT m FROM MessageCapsule m WHERE m.senderEmail = :senderEmail")
	List<MessageCapsule> findBySenderEmail(@Param("senderEmail") String senderEmail);

	@Query("SELECT m FROM MessageCapsule m WHERE m.sendTime <= :time")
    List<MessageCapsule> findCapsulesAfterTime(@Param("time") LocalDateTime time);
	
}
