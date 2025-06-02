package com.virtual_time_capsule.Virtual_Time_Capsule.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.virtual_time_capsule.Virtual_Time_Capsule.model.User;
import java.util.List;


@Repository
public interface UserRepository extends JpaRepository<User, Long>{
	Optional<User> findByUsernameOrEmail(String usernameOrEmail , String orEmail);
	
	Optional<User> getByUsername(String username);
}
