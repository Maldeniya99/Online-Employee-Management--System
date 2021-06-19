<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel= "stylesheet" type="text/css" href="css/delete.css">
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String reason= request.getParameter("reason");
		String sDate = request.getParameter("sDate");
		String eDate = request.getParameter("eDate");
	%>


<div class="del">


 <h1>Employee Leave Delete</h1>
<h7> Do you want to delete the leave request?
         if not click back buttton </h7>
	<form action="delete" method="post">
	
	<table>
	
			<td><input type="hidden" name="id"  value="<%= id %>"readonly> </td>
		
			<td><input type="hidden" name="name" value="<%= name %>" readonly></td>
	
	
		<td><input type="hidden" name="email" value="<%= email %>" readonly></td>

	
		<td><input type="hidden" name="phone" value="<%= phone %>" readonly></td>
	
		<td><input type="hidden" name="reason" value="<%= reason %>" readonly></td>

		<td><input type="hidden"name="sDate" value="<%= sDate %>" readonly></td>
	
	
		<td><input type="hidden" name="eDate" value="<%= eDate %>" readonly></td>
	
	</table> 
	<br>
	
	<input type="submit" name="submit" class="button" value="Delete My leave">
	<br>
	<br>
	
	<a class="button" href="search.jsp"> <span>Back</span></a>
	

	</form>
</div>
</body>
</html>
