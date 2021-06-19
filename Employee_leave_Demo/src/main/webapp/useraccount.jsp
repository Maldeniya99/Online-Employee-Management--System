<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel= "stylesheet" type="text/css" href="css/useraccount.css">
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
			 background-image: url("https://images.pexels.com/photos/260689/pexels-photo-260689.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500.png");
			 
			  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>
<div class="my">
	<table>
	
	
	<c:forEach var="emp" items="${empDetails}">
	
	<c:set var="id" value="${emp.id}"/>
	<c:set var="name" value="${emp.name}"/>
	<c:set var="email" value="${emp.email}"/>
	<c:set var="phone" value="${emp.phone}"/>
	<c:set var="reason" value="${emp.reason}"/>
	<c:set var="sDate" value="${emp.sDate}"/>
	<c:set var="eDate" value="${emp.eDate}"/>
	<c:set var="status" value="${emp.status}"/>
	<thead>
	<tr>
		<td> ID</td>
		
		<th>Name</th>
		<th> Email</th>
		<th> Phone</th>
		<th> Reason</th>
		<th> Starting Date</th>
		<th> Ending Date</th>
		<th>Status</th>
	
	</tr>
	</thead>
	<tbody>
	<tr>
	<td>${emp.id}</td>
	
		<td>${emp.name}</td>
	
	
		<td>${emp.email}</td>
	
		
	
		<td>${emp.phone}</td>
	


		<td>${emp.reason}</td>
	
	
		<td>${emp.sDate}</td>


	
		<td>${emp.eDate}</td>



		<td>${emp.status}</td>
		
		
	</tr>
	</tbody>
	</c:forEach>
	</table>
	
	<c:url value="updateemployee.jsp" var="empupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="reason" value="${reason}"/>
		<c:param name="sDate" value="${sDate}"/>
		<c:param name="eDate" value="${eDate}"/>
	</c:url>
	
	<a href="${empupdate}">
	<input type="button" name="update" class="btn" value="Update Leave ">
	</a>
	<br><br><br>

	<br>
	<c:url value="deleteemployee.jsp" var="empdelete">
		<<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="reason" value="${reason}"/>
		<c:param name="sDate" value="${sDate}"/>
		<c:param name="eDate" value="${eDate}"/>
	</c:url>
	<a href="${empdelete}">
	<input type="button" name="delete" class="btn" value="Delete My Account">
	</a>
	
	
</div>		
</body>
</html>