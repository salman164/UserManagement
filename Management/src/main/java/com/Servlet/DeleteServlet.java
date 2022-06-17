package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.test.SaveObject;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		/*	int id=Integer.parseInt(request.getParameter("id").trim());
			Session session=Uitylity.getSession();
			Transaction transaction = session.beginTransaction();
			User user=session.get(User.class, id);
			session.delete(user);
			transaction.commit();
			session.close();*/
			 int id = Integer.parseInt(request.getParameter("id"));
		       SaveObject.deleteUser(id);
			
			response.sendRedirect("home.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
