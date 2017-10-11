package com.spring.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.backend.DAO.SupplierDAO;
import com.backend.config.Dbconfig;
import com.backend.model.Supplier;


@SuppressWarnings("unused")
@ComponentScan("com.spring")
public class Suppliertest 
{	
	/*@Autowired
	private static Product product;
	*/
	@Autowired
	private static SupplierDAO supplierDAO;
	
	
	@SuppressWarnings("resource")
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		
		context.register(Dbconfig.class);
		context.refresh();
		
		supplierDAO=(SupplierDAO) context.getBean("supplierDAO");
		
		
	}
	@Test
	public void saveSupplier()
	{
		Supplier supplier =new Supplier();
		
		supplier.setName("santhosh");
		
	
		boolean flag=supplierDAO.saveSupplier(supplier);
		assertEquals("createSupplierTestCase", true, flag);
	}
}
