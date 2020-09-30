package com.valorogue.integrator.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.valorogue.integrator.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>
{

}
