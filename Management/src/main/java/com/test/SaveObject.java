package com.test;



import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entity.User;
import com.Utility.Uitylity;

public class SaveObject {
	public static int save(User user) {
		//get the session Object
		Session ses = Uitylity.getSession();
		Transaction tx = null;
		Integer count = 0;
		try{
			//brgin the transaction
			tx = ses.beginTransaction();
			//save the object
			count = (Integer) ses.save(user);
			//commit the trasaction
			tx.commit();
		}catch(HibernateException he) {
			he.printStackTrace();
			tx.rollback();
		}catch(Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		return count;
	}
	
	public static boolean validate(String email, String password) {
		Session ses = Uitylity.getSession();
		Transaction transaction = null;
		User user = null;
		try {
			// start a transaction
			transaction = ses.beginTransaction();
			// get an user object
			user = (User) ses.createQuery("FROM User U WHERE U.email = :email").setParameter("email", email)
					.uniqueResult();
			
			if(user != null && user.getPassword().equals(password)) {
				return true;
			}
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return false;
	}
	
	 public static void updateUser(User user) {
		    Session session = Uitylity.getSession();
	        Transaction transaction = null;
	        
	        try {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // save the student object
	            session.update(user);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }
	
	 public static void deleteUser(int id) {
		 Session session = Uitylity.getSession();
	        Transaction transaction = null;
	        try  {
	            // start a transaction
	            transaction = session.beginTransaction();

	            // Delete a user object
	            User user = session.get(User.class, id);
	            if (user != null) {
	                session.delete(user);
	                System.out.println("user is deleted");
	            }

	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }

	
	
	
	
	 public static User getUser(int id) {

	        Transaction transaction = null;
	        Session session = Uitylity.getSession();
	        User user = null;
	        try  {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an user object
	            user = session.get(User.class, id);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return user;
	    }

	    /**
	     * Get all Users
	     * @return
	     */
	    @SuppressWarnings("unchecked")
	    public static List < User > getAllUser() {
	    	Session ses = Uitylity.getSession();
	        Transaction transaction = null;
	        
	        List < User > listOfUser = null;
	        try {
	            // start a transaction
	            transaction = ses.beginTransaction();
	            // get an user object

	            listOfUser = ses.createQuery("from User").getResultList();

	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return listOfUser;
	    }
	
	
	


}
