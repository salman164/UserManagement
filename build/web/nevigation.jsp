<%-- 
    Document   : nevigation
    Created on : Jun 6, 2022, 10:30:45 AM
    Author     : default
--%>

<%@page import="com.usermanagement.UserData.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">UserManagement</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
        <% User u=(User)session.getAttribute("currentUser");%>
        
      <a class="nav-item nav-link active" href="home.jsp">Home</a>
      <% if(u==null){%>
      
      <a class="nav-item nav-link" href="login.jsp">Login</a>
      <a class="nav-item nav-link" href="registration.jsp">Registration</a>
      
      <% }else{ %>
      <a class="nav-item nav-link" href="login.jsp">LogOut</a>
      <a class="nav-item nav-link" href=""><%= u.getName()%></a>
      <% } %> 
    </div>
  </div>
</nav>
    </body>
</html>
