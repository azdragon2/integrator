package com.valorogue.integrator.model;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "has_role")
public class HasRole
{
	@Id
	@GeneratedValue(generator = "UUID")
	@GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
	@Column(name = "id", updatable = false, nullable = false)
	private UUID id;

	@ManyToOne
	@JoinColumn(name = "integrator_user_id")
	private User user;

	@ManyToOne
	@JoinColumn(name = "integrator_role_id")
	private Role role;

	@Column(name = "deleted", nullable = false)
	public Boolean deleted;

	public HasRole()
	{
		super();
	}

	public UUID getId()
	{
		return id;
	}

	public void setId(UUID id)
	{
		this.id = id;
	}

	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	public Role getRole()
	{
		return role;
	}

	public void setRole(Role role)
	{
		this.role = role;
	}

	public Boolean getDeleted()
	{
		return deleted;
	}

	public void setDeleted(Boolean deleted)
	{
		this.deleted = deleted;
	}

	@Override
	public String toString()
	{
		return "HasRole [id=" + id + ", user=" + user + ", role=" + role + ", deleted=" + deleted + "]";
	}

}
