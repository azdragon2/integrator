package com.valorogue.integrator;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest
class IntegratorApplicationTests
{

	public static final Logger log = LoggerFactory.getLogger(IntegratorApplicationTests.class);

	@Test
	void contextLoads()
	{
	}

	@Test
	void generatePassword()
	{
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(11);
		log.info("Password Generated: " + encoder.encode("TestPassword@2"));
	}

}
