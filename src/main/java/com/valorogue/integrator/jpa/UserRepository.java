package com.valorogue.integrator.jpa;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.valorogue.integrator.model.User;

public interface UserRepository extends JpaRepository<User, Long>
{
	@Query("SELECT u FROM User u WHERE lower(u.email) = lower(:email)")
	User findByEmail(@Param("email") String email);

	@Query("SELECT u FROM User u WHERE lower(u.firstName) LIKE CONCAT('%', :query, '%') OR lower(u.lastName) LIKE CONCAT('%', :query, '%') OR lower(u.email) LIKE CONCAT('%', :query, '%')")
	Page<User> searchByFirstNameOrLastNameOrEmail(@Param("query") String query, Pageable pageable);

}
