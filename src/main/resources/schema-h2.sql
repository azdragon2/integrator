CREATE TABLE IF NOT EXISTS integrator_user (
	id uuid PRIMARY KEY,
	first_name varchar(100),
	last_name varchar(100),
	email varchar(150) not null unique,
	password varchar(150) not null,
	created timestamp,
	updated timestamp,
	deleted boolean not null
);

CREATE TABLE IF NOT EXISTS integrator_role (
	id uuid PRIMARY KEY,
	name varchar(100) not null,
	deleted boolean not null
);

CREATE TABLE IF NOT EXISTS has_role (
	id uuid PRIMARY KEY,
	integrator_user_id uuid not null,
	integrator_role_id uuid not null,
	deleted boolean not null
);

CREATE TABLE IF NOT EXISTS endpoint (
	id uuid PRIMARY KEY,
	version int,
	path varchar(150),
	created timestamp,
	updated timestamp,
	deleted boolean not null
);

CREATE TABLE IF NOT EXISTS request (
	id uuid PRIMARY KEY,
	version int,
	path varchar(255),
	created timestamp,
	updated timestamp,
	deleted boolean not null
);

CREATE TABLE IF NOT EXISTS activity (
	id uuid PRIMARY KEY,
	integrator_user_id uuid not null,
	activity_type varchar(100) not null,
	desc varchar(255) not null,
	created timestamp
);