package com.virtual_time_capsule.Virtual_Time_Capsule.service;

import java.util.Optional;
import java.util.Set;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.virtual_time_capsule.Virtual_Time_Capsule.controller.JwtService;
import com.virtual_time_capsule.Virtual_Time_Capsule.model.User;
import com.virtual_time_capsule.Virtual_Time_Capsule.repository.UserRepository;

import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class UserService implements UserDetailsService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private JwtService jwtService;
	
	
	public UserRepository getUserRepository() {
		return userRepository;
	}

	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}



	@Override
	public UserDetails loadUserByUsername(String usernameOrEmail) throws UsernameNotFoundException {
		System.err.println();
	    User user = userRepository.findByUsernameOrEmail(usernameOrEmail, usernameOrEmail)
	            .orElse(null);
	   
//	    System.err.println(jwtService.generateToken(usernameOrEmail));

	    Set<GrantedAuthority> authorities = user.getRoles().stream()
	            .map(role -> new SimpleGrantedAuthority(role.getName()))
	            .collect(Collectors.toSet());

	    return new org.springframework.security.core.userdetails.User(
	    		user.getUsername(), 
	            user.getPassword(), 
	            authorities
	    );
	}

	public void saveUser(User user) {
		userRepository.save(user);
		
	}
	
	public Optional<User> findUser(String email) {
		return userRepository.findByUsernameOrEmail(email, email);
	}
	
	@Transactional
	public Optional<User> findEmail(String username) {
		return userRepository.getByUsername(username);
	}


	
}
