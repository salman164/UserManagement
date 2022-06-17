<%-- 
    Document   : registration
    Created on : Jun 6, 2022, 10:28:55 AM
    Author     : default
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user register page</title>
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

<form action="RegistrationServlet" method="post" class="form" id="frm">
   <h2 class="bg-danger text-white card-header">Registration form</h2>
     <table class="table table-hover">
     <tr>
     <td>Name</td>
     <td><input type="text" name="name" required></td>
     </tr>
      <tr>
     <td>Email</td>
     <td><input type="email" name="email" required ></td>
     </tr>
      <tr>
     <td>Password</td>
     <td><input type="text" name="password" required ></td>
     </tr>
     <tr>
     <td>Phone</td>
     <td><input type="text" name="phone" required ></td>
     </tr>
     <tr>
     <td>DOB</td>
     <td><input type="date" name="DOB" required ></td>
     </tr>
     <tr>
     <td>City</td>
     <td><select name="city">
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
