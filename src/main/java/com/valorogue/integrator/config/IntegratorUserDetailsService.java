package com.valorogue.integrator.config;

import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.valorogue.integrator.jpa.UserRepository;
import com.valorogue.integrator.model.Role;

@Service("userDetailsService")
public class IntegratorUserDetailsService implements UserDetailsService
{
	public static final Logger log = LoggerFactory.getLogger(IntegratorUserDetailsService.class);

	@Autowired
	private UserRepository userRepository;

	@Transactional(readOnly = true)
	@Override
	public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException
	{
		com.valorogue.integrator.model.User user = userRepository.findByEmail(username);
		log.info("User attempting login: " + user);
		if (user == null)
			throw new UsernameNotFoundException("Username not found!");

		UserBuilder builder = null;
		builder = User.withUsername(user.getEmail());
		builder.password(user.getPassword());
		builder.roles(extractRoleNames(user.getRoles()));
		builder.disabled(user.getDeleted());
		return builder.build();
	}

	/**
	 * Extract the names out of the Set of specified roles
	 * 
	 * @param roles
	 * @return
	 */
	private String[] extractRoleNames(Set<Role> roles)
	{
		String[] roleNames = new String[roles.size()];
		int a = 0;
		for (Role role : roles)
		{
			roleNames[a] = role.getName();
			a++;
		}
		return roleNames;
	}
}
