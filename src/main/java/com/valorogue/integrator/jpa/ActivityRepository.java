package com.valorogue.integrator.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.valorogue.integrator.model.Activity;

public interface ActivityRepository extends JpaRepository<Activity, Long>
{

}
