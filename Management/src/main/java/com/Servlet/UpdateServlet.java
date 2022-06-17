package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Entity.User;
import com.test.SaveObject;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id").trim());
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			String phone=req.getParameter("phone");
			String dob=req.getParameter("dob");
			String city=req.getParameter("city");
			
			
		
			User user=new User(id,name,email,password,phone,dob,city);
		
			
			SaveObject.updateUser(user);
			
			resp.sendRedirect("home.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
