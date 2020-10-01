package com.valorogue.integrator.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.valorogue.integrator.constants.Constants;
import com.valorogue.integrator.jpa.ActivityRepository;
import com.valorogue.integrator.model.Activity;
import com.valorogue.integrator.model.User;

@Service
public class ActivityService
{
	@Autowired
	UserService userService;

	@Autowired
	ActivityRepository activityRepository;

	public void trackUserCreated(User user)
	{
		Activity a = new Activity(getUser(), Constants.ACTIVITY_TYPE_USER_CREATED,
				"New user " + user.firstName + " " + user.lastName + " was created in the system.");
		activityRepository.save(a);
	}

	public void trackUserUpdated(User user)
	{
		if (user.getDeleted())
		{
			Activity a = new Activity(getUser(), Constants.ACTIVITY_TYPE_USER_DEACTIVATED,
					"User " + user.firstName + " " + user.lastName + " was deactivated in the system.");
			activityRepository.save(a);
		} else
		{
			Activity a = new Activity(getUser(), Constants.ACTIVITY_TYPE_USER_UPDATED,
					"User " + user.firstName + " " + user.lastName + " was updated in the system.");
			activityRepository.save(a);
		}
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
