/*package com.spring.test;


import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.backend.DAO.UserDetailsDAO;
import com.backend.config.Dbconfig;
import com.backend.model.UserDetails;

@SuppressWarnings("unused")
@ComponentScan("com.spring")
public class UserDetailstest {

	@Autowired
	private static UserDetailsDAO userDetailsDAO;
	
	@SuppressWarnings("resource")
	@BeforeClass
	public static void initialize(){
	
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		
		context.register(Dbconfig.class);
		context.refresh();
		
		userDetailsDAO=(UserDetailsDAO)context.getBean("userDetailsDAO");
	}
	@Test
	public void saveUserDetails()
	{
		UserDetails ud = new UserDetails();
		
		ud.setAddress("Santhoshreddy");
		ud.setPassword("fgxgft");
		ud.setRole("admin");
		ud.setCustomername("ravi");
		ud.setAddress("near kphb");
		
  boolean flag =userDetailsDAO.saveUserDetails(ud);
 assertEquals("createUserDetailsTestCase",true,flag);

	}
}
*/