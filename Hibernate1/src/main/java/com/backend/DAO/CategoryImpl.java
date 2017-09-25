package com.backend.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.backend.model.Category;

@Repository
public class CategoryImpl implements CategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	public CategoryImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	public boolean saveCategory(Category category) 
	{
		Session s=sessionFactory.openSession();
		s.saveOrUpdate(category);
		Transaction t=s.beginTransaction();
		t.commit();
		return true;
	}
}
