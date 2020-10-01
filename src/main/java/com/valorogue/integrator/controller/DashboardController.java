package com.valorogue.integrator.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController extends IntegratorPageController
{
	public static final Logger log = LoggerFactory.getLogger(DashboardController.class);

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

	@GetMapping("/requests")
	public ModelAndView requests(ModelAndView modelAndView)
	{
		defaultModelAndView(modelAndView);
		modelAndView.setViewName("requests");
		return modelAndView;
	}

	@GetMapping("/users")
	public ModelAndView users(ModelAndView modelAndView)
	{
		defaultModelAndView(modelAndView);
		modelAndView.setViewName("users");
		return modelAndView;
	}

	@GetMapping(value = "/users/query", produces = "application/json")
	public @ResponseBody Map<String, Object> users(@RequestParam(value = "page", required = true) Integer page,
			@RequestParam(value = "query", required = true) String query,
			@RequestParam(value = "sortField", required = true) String sortField,
			@RequestParam(value = "sortDirection", required = true) String sortDirection)
	{
		// Format Sorting Direction and Validate
		sortDirection = sortDirection.toLowerCase();
		if (!sortDirection.equals("asc") && !sortDirection.equals("desc"))
		{
			throw new IllegalArgumentException("sortDirection can only be 'asc', or 'desc'.");
		}

		// Validate Sort Field
		if (!sortField.equals("firstName") && !sortField.equals("lastName") && !sortField.equals("created"))
		{
			throw new IllegalArgumentException("sortField can only be 'firstName', 'lastName', or 'created'.");
		}
		
		// Format Query
		if (query != null)
		{
			query = query.toLowerCase();
		} else
			query = "";

		Map<String, Object> response = new HashMap<String, Object>();
		response.put("users", userService.queryUsers(page, query, sortField, sortDirection));
		return response;
	}
}
