package com.valorogue.integrator.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.valorogue.integrator.jpa.UserRepository;
import com.valorogue.integrator.model.User;

@Service
public class UserService
{
	@Autowired
	UserRepository userRepository;

	public User getUserByEmail(String email)
	{
		return userRepository.findByEmail(email);
	}
	
	
}
