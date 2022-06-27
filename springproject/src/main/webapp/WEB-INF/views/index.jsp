<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <c:forEach items="${user }" var="u">
               
                <tr>
                    
                    <th colspan="row">${u.id}</th>
                    <td>${u.name}</td>
                    <td>${u.email}</td>
                    <td>${u.phone}</td>
                    <td>${u.dob}</td>
                    <td>${u.city}</td>
                    <td>
                       
                        <button type="button" class="btn btn-success"><a href="update/${u.id}">Edit</a></button>
                        <button type="button" class="btn btn-danger"><a href="delete/${u.id}">Delete</a></button>
                    </td>
                   
                </tr>
                 </c:forEach>
            </tbody>
            
            
        </table>

</body>
</html>