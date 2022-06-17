/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.usermanagement.Servlet;

import com.usermanagement.ConnectDb.ConnectionDb;
import com.usermanagement.Dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author default
 */
public class DeleteUserServlet extends HttpServlet {

   
    
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
       response.setContentType("text/html");
       int delId= Integer.parseInt(request.getParameter("id"));
     //  out.println(delId);
     UserDao ud=new UserDao(ConnectionDb.getConnection());
     ud.deleteuser(delId);
       response.sendRedirect("home.jsp");
    }

  
}
