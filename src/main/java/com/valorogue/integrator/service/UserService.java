package com.valorogue.integrator.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.valorogue.integrator.jpa.UserRepository;
import com.valorogue.integrator.model.User;


@Service
public class UserService
{
	@Autowired
	UserRepository userRepository;
	
	private final int MAX_PAGE_SIZE = 20;

	public User getUserByEmail(String email)
	{
		return userRepository.findByEmail(email);
	}

	public Page<User> queryUsers(Integer page, String query, String sortField, String sortDirection)
	{
		Sort.Direction dir = Sort.Direction.ASC;
		if (sortDirection.equals("desc"))
			dir = Sort.Direction.DESC;
		
		if (query != null && !query.isEmpty())
		{
			return userRepository.searchByFirstNameOrLastNameOrEmail(query, PageRequest.of(page, MAX_PAGE_SIZE, Sort.by(dir, sortField)));
		}
		else
		{
			return userRepository.findAll(PageRequest.of(page, MAX_PAGE_SIZE, Sort.by(dir, sortField)));
		}
	}
	
	
}
