<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<link rel= "stylesheet" type="text/css" href="css/search.css">
		
</head>
<body>
<div class="container">

  <div class="cover">
   <p><b>Enter your name to view leave request details.</b></p>
    <form  class="flex-form" action="search" method="post" >
      <label for="from">
        <i class="ion-location"></i>
      </label>
	
	
	
	<input type="search" name="name" placeholder="Enter your name"><br>
		<input type="submit" name="submit"  value="View">
		</div>
		<br>
		
	</form>
</div>
 



</body>
</html>