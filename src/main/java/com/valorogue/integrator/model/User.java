package com.valorogue.integrator.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "integrator_user")
public class User
{
	@Id
	@GeneratedValue(generator = "UUID")
	@GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
	@Column(name = "id", updatable = false, nullable = false)
	private UUID id;

	@Column(name = "email", length = 150, unique = true, nullable = false)
	public String email;

	@Column(name = "password", length = 150, nullable = false)
	public String password;

	@Column(name = "first_name", length = 100, nullable = false)
	public String firstName;

	@Column(name = "lastName", length = 100, nullable = false)
	public String lastName;

	@Column(name = "created", nullable = false)
	public Date created;

	@Column(name = "updated", nullable = false)
	public Date updated;

	@Column(name = "deleted", nullable = false)
	public Boolean deleted;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "has_role", joinColumns = { @JoinColumn(name = "integrator_user_id") }, inverseJoinColumns = {
			@JoinColumn(name = "integrator_role_id") })
	private Set<Role> roles = new HashSet<Role>();

	public User()
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

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getFirstName()
	{
		return firstName;
	}

	public void setFirstName(String firstName)
	{
		this.firstName = firstName;
	}

	public String getLastName()
	{
		return lastName;
	}

	public void setLastName(String lastName)
	{
		this.lastName = lastName;
	}

	public Date getCreated()
	{
		return created;
	}

	public void setCreated(Date created)
	{
		this.created = created;
	}

	public Date getUpdated()
	{
		return updated;
	}

	public void setUpdated(Date updated)
	{
		this.updated = updated;
	}

	public Boolean getDeleted()
	{
		return deleted;
	}

	public void setDeleted(Boolean deleted)
	{
		this.deleted = deleted;
	}

	public Set<Role> getRoles()
	{
		return roles;
	}

	public void setRoles(Set<Role> roles)
	{
		this.roles = roles;
	}

	@Override
	public String toString()
	{
		return "User [id=" + id + ", email=" + email + ", password=" + password + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", created=" + created + ", updated=" + updated + ", deleted=" + deleted
				+ "]";
	}
}
