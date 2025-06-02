package com.virtual_time_capsule.Virtual_Time_Capsule.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.virtual_time_capsule.Virtual_Time_Capsule.model.ExpiredCapsule;

@Repository
public interface ExpiredCapsuleRepository extends JpaRepository<ExpiredCapsule, Long>{

	List<ExpiredCapsule> getBySenderEmail(String email);
}
