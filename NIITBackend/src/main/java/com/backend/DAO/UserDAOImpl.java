package com.backend.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.backend.model.User;

@Repository
public class UserDAOImpl implements UserDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory; 
		
	}
	@Transactional
	public boolean saveUser(User user) {
		// TODO Auto-generated method stub
    sessionFactory.getCurrentSession().saveOrUpdate(user);
		
		return true;
	}
	@Transactional
	public List<User> list() {
		// TODO Auto-generated method stub
		return null;
	}
	@SuppressWarnings("deprecation")
	@Transactional
	public List<User> getUserById(int userid) {
		// TODO Auto-generated method stub
		return (List<User>) sessionFactory.getCurrentSession().createQuery("from User where id="+userid).list();
	}
	

	public void removeUserById(int user_id) {
		// TODO Auto-generated method stub
		
	}
	@Transactional
	public User getUser(int userid) {
		// TODO Auto-generated method stub
		return (User)sessionFactory.getCurrentSession().get(User.class, userid);
	}
	@Transactional
	public List getAllUser() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}
	@SuppressWarnings("deprecation")
	@Transactional
	public User get(String email) {
		// TODO Auto-generated method stub
		Criteria c = sessionFactory.getCurrentSession().createCriteria(User.class);
		c.add(Restrictions.eq("email", email));

		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) c.list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		} else {
			return null;
		}

	}
	/*public List<User> getUserById(int userid) {
		// TODO Auto-generated method stub
		return (List<User>) sessionFactory.getCurrentSession().createQuery("from User where id="+userid).list();
	}*/
	
}