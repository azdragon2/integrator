package com.valorogue.integrator.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.valorogue.integrator.model.Role;
import com.valorogue.integrator.model.User;
import com.valorogue.integrator.service.UserService;

@Controller
public class DashboardController
{
	public static final Logger log = LoggerFactory.getLogger(DashboardController.class);

	@Autowired
	UserService userService;

	// -----GET-----
	@GetMapping({ "/", "/index", "/home" })
	public ModelAndView index(ModelAndView modelAndView)
	{
		defaultModelAndView(modelAndView);
		modelAndView.setViewName("index");
		return modelAndView;
	}

	@GetMapping("/login")
	public ModelAndView login(ModelAndView modelAndView)
	{
		modelAndView.setViewName("login");
		return modelAndView;
	}

	// -----PRIVATE METHODS-----
	/**
	 * Add information used on every page to the provided ModelAndView.
	 * 
	 * @param modelAndView
	 */
	private void defaultModelAndView(ModelAndView modelAndView)
	{
		User user = getUser();
		modelAndView.addObject("firstName", user.getFirstName());
		modelAndView.addObject("lastName", user.getLastName());
		modelAndView.addObject("email", user.getEmail());

		if (user.getRoles().size() != 1)
			log.warn("User " + user.getId() + " has invalid roles");
		else
			modelAndView.addObject("role", ((Role) user.getRoles().toArray()[0]).getName());
	}

	/**
	 * Retrieve the Authentication Principal from the Context and query the database
	 * for the logged in user.
	 * 
	 * @return
	 */
	private User getUser()
	{
		org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User) SecurityContextHolder
				.getContext().getAuthentication().getPrincipal();
		return userService.getUserByEmail(user.getUsername());
	}
}
