<%-- 
    Document   : edit.jsp
    Created on : Jun 7, 2022, 6:50:44 PM
    Author     : default
--%>

<%@page import="com.usermanagement.UserData.User"%>
<%@page import="com.usermanagement.ConnectDb.ConnectionDb"%>
<%@page import="com.usermanagement.Dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <% int id=Integer.parseInt(request.getParameter("id")); %>
        
        <% UserDao udao=new UserDao(ConnectionDb.getConnection());
           User u=udao.getUser(id);
           
        %>
        
        <form action="update" method="post" class="form" id="frm">
   <h2 class="bg-danger text-white card-header">Registration form</h2>
     <table class="table table-hover">
         <tr>
     <td></td>
     <td><input type="hidden" name="id"  value="<%= u.getId()%>" ></td>
     </tr>
     <tr>
     <td>Name</td>
     <td><input type="text" name="name" value="<%= u.getName()%>" required></td>
     </tr>
     <tr>
     <td>Phone</td>
     <td><input type="text" name="phone" value="<%= u.getPhone()%>" required ></td>
     </tr>
     <tr>
     <td>DOB</td>
     <td><input type="date" name="dob" value="<%= u.getDob()%>" required ></td>
     </tr>
     <tr>
     <td>City</td>
     <td><select name="city" value="<%= u.getCity()%>">
     <option value="ktm">KTM</option>
     <option value="npj">NPJ</option>
     <option value="pokhara">pokhara</option>
     <option value="butwal">butwal</option>
     </select></td>
     </tr>
     <tr class="card-footer">
     <td><button type="submit" class="btn btn-outline-success">Register</button></td>
     <td><button type="reset" class="btn btn-outline-denger">cancel</button></td>
     </tr>
    
      </table>


</form>
        
    </body>
</html>
