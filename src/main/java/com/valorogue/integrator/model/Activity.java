package com.valorogue.integrator.model;

import java.util.Date;
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
@Table(name = "integrator_user")
public class Activity
{
	@Id
	@GeneratedValue(generator = "UUID")
	@GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
	@Column(name = "id", updatable = false, nullable = false)
	private UUID id;

	@ManyToOne
	@JoinColumn(name = "integrator_user_id")
	private User user;

	@Column(name = "activity_type", length = 100)
	public String type;

	@Column(name = "desc", length = 255)
	public String desc;

	@Column(name = "created", nullable = false)
	public Date created;

	public Activity(User user, String type, String desc)
	{
		super();
		this.user = user;
		this.type = type;
		this.desc = desc;
		this.created = new Date();
	}

	public Activity()
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

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public String getDesc()
	{
		return desc;
	}

	public void setDesc(String desc)
	{
		this.desc = desc;
	}

	public Date getCreated()
	{
		return created;
	}

	public void setCreated(Date created)
	{
		this.created = created;
	}

	@Override
	public String toString()
	{
		return "Activity [id=" + id + ", user=" + user + ", type=" + type + ", desc=" + desc + ", created=" + created
				+ "]";
	}

}
