package springproject.Dao;

import java.util.List;

import javax.persistence.NoResultException;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import springproject.Model.User;

@Component
public class userDao  {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	//create user
	@Transactional
	public void createUser(User user) {
		
		this.hibernateTemplate.saveOrUpdate(user);
		 
	}
	//get all user
	public List<User> getUsers() {
		List<User> user= this.hibernateTemplate.loadAll(User.class);
		return user;
	}
	
	//delete user
	@Transactional
	public void deleteUser(int uid) {
		User u= this.hibernateTemplate.load(User.class , uid);
		this.hibernateTemplate.delete(u);
	} 
	
	//get single user
	public User getUser(int uid) {
		return this.hibernateTemplate.get(User.class, uid);
	}
	
	public User loginUser(String email, String password) {
		Transaction tx=null;
		User user=null;
		try {
			Session s=hibernateTemplate.getSessionFactory().openSession();
			tx=s.beginTransaction();
			String query="from User where email=: e and password=:p";
			Query q=s.createQuery(query);
			q.setParameter("e",email);
			q.setParameter("p", password);
			user=(User) q.uniqueResult();
			tx.commit();
			s.close();
			
		}catch(Exception e) {
			e.printStackTrace();	
			}
		
		return user;
	}
	
	}
