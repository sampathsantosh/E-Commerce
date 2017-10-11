package com.backend.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.backend.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public SupplierDAOImpl(SessionFactory sessionFactory) {
		// TODO Auto-generated constructor stub
		this.sessionFactory=sessionFactory;
	}
@Transactional
	public boolean saveSupplier(Supplier s) 
	{
		Session e=sessionFactory.openSession();
		e.saveOrUpdate(s);
		Transaction t=e.beginTransaction();
		t.commit();
		e.flush();
		e.close();
		return true;
}

	public List getAllSupplier() {
		// TODO Auto-generated method stub
		return null;
	}
}