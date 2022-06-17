package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Entity.User;
import com.test.SaveObject;

/**
 * Servlet implementation class RegistrationServlet
 */
public class RegistrationServlet extends HttpServlet {
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
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		
		//read the form
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String phone=req.getParameter("phone");
		String dob=req.getParameter("dob");
		String city=req.getParameter("city");
		
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		user.setPhone(phone);
		user.setDob(dob);
		user.setCity(city);
		
		int count = SaveObject.save(user);
		
		if(count==0) {
			resp.sendRedirect("registration.jsp");
		}else {
			resp.sendRedirect("login.jsp");
		}
		//close the stream
		out.close();
		
		/*out.println("name: "+name);
		out.println("email: "+email);
		out.println("password: "+password);
		out.println("phone: "+phone);
		out.println("dob: "+dob);
		out.println("city: "+city);
		
		out.println("registration success");*/
	}

}
