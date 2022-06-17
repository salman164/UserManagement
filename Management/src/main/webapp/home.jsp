<%-- 
    Document   : home
    Created on : Jun 6, 2022, 10:29:54 AM
    Author     : default
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.Utility.*" %>
<%@page import="org.hibernate.*" %>
<%@page import="java.util.List" %>
<%@page import="com.test.*" %>

<%@ page import="com.Entity.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
    <%@include file="nevigation.jsp" %>

        <h3 class="text-center">List of all user</h3>
        <table class="table table-striped table-dark text-center">
            <thead>
                <tr>
                    <th colspan="col">Id</th>
                    <th colspan="col">Name</th>
                    <th colspan="col">Email</th>
                    <th colspan="col">phone</th>
                    <th colspan="col">DOB</th>
                    <th colspan="col">City</th>
                    <th colspan="col">Action</th>
                </tr>
            </thead>
            <tbody>
            
       <%--      <%
             Session ses=Uitylity.getSession();
             Query q=ses.createQuery("from User");
             List <User> list=q.list();
             for(User user:list){
            %>   --%> 
            
        <%     List <User> list=SaveObject.getAllUser();
        
               for(User user:list){
        
        %>

                <tr>
                    
                    <th colspan="row"><%= user.getId() %></th>
                    <td><%= user.getName() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getPhone() %></td>
                    <td><%= user.getDob() %></td>
                    <td><%= user.getCity() %></td>
                    <td>
                       
                       <a class="btn btn-success" href="edit.jsp?id=<%=user.getId() %>">Update</a>
                         <a class="btn btn-danger" href="DeleteServlet?id=<%=user.getId() %>">Delete</a>
                    </td>
                   
                </tr>
                <%} %>
                
            <%--    <%} 
                ses.close();
                %>    --%>  
            </tbody>
            
            
        </table>
    </body>
</html>
