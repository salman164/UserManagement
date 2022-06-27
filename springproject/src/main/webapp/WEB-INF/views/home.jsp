<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
   <%@include file="./nevigation.jsp" %>
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
               
                <tr>
                    
                    <th colspan="row">1</th>
                    <td>salmn</td>
                    <td>sal@gmail</td>
                    <td>98754</td>
                    <td>78/86/9866</td>
                    <td>nepal</td>
                    <td>
                       
                        <button type="button" class="btn btn-success"><a href="">Edit</a></button>
                        <button type="button" class="btn btn-danger"><a href="">Delete</a></button>
                    </td>
                   
                </tr>
                 
            </tbody>
            
            
        </table>

</body>
</html>