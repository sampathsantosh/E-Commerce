package com.backend.DAO;

import java.util.Iterator;
import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.backend.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private ProductDAO productDAO;
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
@Transactional
	public boolean createProduct(Product p) {
		Session s=sessionFactory.openSession();
		s.saveOrUpdate(p);
		Transaction t=s.beginTransaction();
		t.commit();
		return true;
	}
@Transactional

	public boolean getProduct(int id) {
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("from Product p");
		List l=q.getResultList();
		System.out.println("Totaal number of records:"+l.size());;
		Iterator it=l.iterator();
		 
		while(it.hasNext())
		 {
			 Object o = (Object)it.next();
			 Product p = (Product)o;
			 System.out.println("Product id : "+p.getId());
			 System.out.println("Product Name : "+p.getName());
			 System.out.println("Product Quantity : "+p.getQuantity());
			 System.out.println("Product Price : "+p.getPrice());
			 System.out.println("----------------------");
		 } 
		return true;
	}
@Transactional
	public boolean deleteProduct(int id) {
			
		
			sessionFactory.getCurrentSession().createQuery("DELETE FROM Product WHERE id = "+id).executeUpdate();
			return true;
	}
@Transactional
	public boolean updateProduct(Product p) {
		Session session = sessionFactory.openSession();
		 Object o=session.load(Product.class,new Integer(10));
		 Product s=(Product)o;
		 
		 Transaction tx = session.beginTransaction(); 
		 s.setPrice(70000);  // implicitly update method will be called.
		 tx.commit();
		 
		 System.out.println("Object Updated successfully.....!!");
		return true;
	}
		

	
	
}