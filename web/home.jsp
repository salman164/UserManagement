<%-- 
    Document   : home
    Created on : Jun 6, 2022, 10:29:54 AM
    Author     : default
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.usermanagement.ConnectDb.ConnectionDb"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="nevigation.jsp" %>
        <% Connection con=ConnectionDb.getConnection();
        String query="select *from user";
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery(query);
        %>
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
                <% while (rs.next()){ %>
                <tr>
                    
                    <th colspan="row"><%= rs.getString("id")  %></th>
                    <td><%= rs.getString("name")  %></td>
                    <td><%= rs.getString("email")  %></td>
                    <td><%= rs.getString("phone")  %></td>
                    <td><%= rs.getString("dob")  %></td>
                    <td><%= rs.getString("city")  %></td>
                    <td>
                       
                        <button type="button" class="btn btn-success"><a href="edit.jsp?id=<%= rs.getInt("id")%>">Edit</a></button>
                        <button type="button" class="btn btn-danger"><a href="delete?id=<%= rs.getInt("id")%>">Delete</a></button>
                    </td>
                   
                </tr>
                 <%  }%>
            </tbody>
            
            
        </table>
    </body>
</html>
