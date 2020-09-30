package com.valorogue.integrator.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.valorogue.integrator.model.HasRole;

public interface HasRoleRepository extends JpaRepository<HasRole, Long>
{

}
