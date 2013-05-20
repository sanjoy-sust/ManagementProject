package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import com.domain.User;

public class UserDAOImpl implements UserDAO {
	private SessionFactory sessionFactory;
    
	private HibernateTemplate hibernateTemplate;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
	}

	@Override
	public void saveUser(User user) {
		hibernateTemplate.saveOrUpdate(user);
	}
	
	@Override
	public void delete(User user)
	{
		hibernateTemplate.delete(user);
	}
	@Override
	public void update(User user)
	{
		hibernateTemplate.update(user);
	}
	public User getUserByUserNameAndPassword(String name,String password)
	{
		User user = new User();
		List<User> users = hibernateTemplate.find("from User where Name = '"+name+"' and password ='"+password+"'");
		return users.get(0);
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<User> listUser() {
		return hibernateTemplate.find("from User");
	}

}
