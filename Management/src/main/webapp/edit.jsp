<%-- 
    Document   : edit.jsp
    Created on : Jun 7, 2022, 6:50:44 PM
    Author     : default
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*" %>
<%@ page import="com.Utility.*" %>
<%@page import="com.Entity.*" %>
<%@page import="com.test.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <style type="text/css">
   #frm{
        width:500px;
        margin:auto;
        margin-top:100px;
   }
    </style>
    </head>
    <body class="container-fluid">
    
    <%
    int id=Integer.parseInt(request.getParameter("id"));
    User user=SaveObject.getUser(id);
    
    
    %>
       
        
        <form action="UpdateServlet" method="post" class="form" id="frm">
   <h2 class="bg-danger text-white card-header">Update User</h2>
     <table class="table table-hover">
         <tr>
     <td>Id</td>
     <td><input type="text" name="id"  value="<%= user.getId() %>" readonly></td>
     </tr>
     <tr>
     <td>Name</td>
     <td><input type="text" name="name" value="<%= user.getName() %>" required></td>
     </tr>
      <td>Email</td>
     <td><input type="text" name="email" value="<%= user.getEmail() %>" readonly ></td>
     </tr>
      <tr>
     <td>Password</td>
     <td><input type="text" name="password"  value="<%= user.getPassword()%>" readonly></td>
     </tr>
     <tr>
     <td>Phone</td>
     <td><input type="text" name="phone" value="<%= user.getPhone() %>" required ></td>
     </tr>
     <tr>
     <td>DOB</td>
     <td><input type="date" name="dob" value="<%= user.getDob() %>" required ></td>
     </tr>
     <tr>
     <td>City</td>
     <td><select name="city" value="<%= user.getCity() %>">
     <option value="ktm">KTM</option>
     <option value="npj">NPJ</option>
     <option value="pokhara">pokhara</option>
     <option value="butwal">butwal</option>
     </select></td>
     </tr>
     <tr class="card-footer">
     <td><button type="submit" class="btn btn-outline-success">Update</button></td>
     <td><button type="reset" class="btn btn-outline-denger">cancel</button></td>
     </tr>
    
      </table>


</form>
        
    </body>
</html>
