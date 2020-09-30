package com.valorogue.integrator.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.valorogue.integrator.model.User;

public interface UserRepository extends JpaRepository<User, Long>
{
	@Query("SELECT u FROM User u WHERE lower(u.email) = lower(:email)")
	User findByEmail(@Param("email") String email);

}
