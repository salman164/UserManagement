<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
         <style type="text/css">
   #frm{
        width:500px;
        margin:auto;
        margin-top:100px;
   }
    </style>
</head>

   <body class="container-fluid">
   <form action="login" method="post" class="form" id="frm">
   <h2 class="bg-danger text-white card-header">Login form</h2>
     <table class="table table-hover">
     <tr>
     <td>Email</td>
     <td><input type="email" name="email" required ></td>
     </tr>
      <tr>
     <td>Password</td>
     <td><input type="text" name="password" required ></td>
     </tr>
          <tr class="card-footer">
     <td><button type="submit" class="btn btn-outline-success">Login</button></td>
     <td><button type="reset" class="btn btn-outline-denger">cancel</button></td>
     </tr>
    
      </table>


</form>
   </body>
</html>