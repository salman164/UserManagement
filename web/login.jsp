<%-- 
    Document   : login
    Created on : Jun 6, 2022, 10:29:10 AM
    Author     : default
--%>

<%@page import="com.usermanagement.Dao.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
         <style type="text/css">
   #frm{
        width:500px;
        margin:auto;
        margin-top:100px;
   }
    </style>

    </head>
    
        
      <body class="container-fluid">
          <%@include file="nevigation.jsp" %>
          
        

<form action="LoginServlet" method="post" class="form" id="frm">
   <h2 class="bg-danger text-white card-header">Registration form</h2>
     <table class="table table-hover">
      <tr>
     <td>Email</td>
     <td><input type="email" name="email" required ></td>
     </tr>
      <tr>
     <td>Password</td>
     <td><input type="text" name="password" required ></td>
     </tr>
     <tr class="card-footer ">
     <td><button type="submit" class="btn btn-outline-success">Login</button></td>
     </tr>
    
      </table>


</form>
        
    </body>
</html>
