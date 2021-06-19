<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel= "stylesheet" type="text/css" href="css/update.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
  $( function() {
    $( "#datepicker1" ).datepicker();
  } );
  </script>
    <script>
  $( function() {
    $( "#datepicker2" ).datepicker();
  } );
  </script>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String reason = request.getParameter("reason");
		String sDate = request.getParameter("sDate");
		String eDate = request.getParameter("eDate");
	%>
	<div class="container-fluid px-1 py-5 mx-auto">
    <div class="row d-flex justify-content-center">
        <div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
	     <div class="card">
	<form action="update" method="post" class="form-card">
	<div class="row justify-content-between text-left">

		
<div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b></b></label> <br> <input type="hidden" name="id" value="<%= id %>" readonly> </div>					
<br><div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>Name</b></label> <br> <input type="text" name="name" value="<%= name %>"readonly> </div>		
<br><div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>Email</b></label> <br> <input type="text" name="email" value="<%= email %>"> </div>
<br><div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>PhoneNumber</b></label> <br> <input type="text" name="phone" value="<%= phone %>"> </div>
<br><div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>Reason</b></label> <br><input type="text" name="reason" value="<%=reason %>"> </div>
<br><div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>SDate</b></label> <br> <input type="text" id="datepicker1" name="sDate" value="<%=sDate %>"> </div>	
<br><div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>EDate</b></label> <br> <input type="text"id="datepicker2" name="eDate" value="<%=eDate %>"> </div>		
			
	
	
	
	
	
	
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</div>
	</form></div>
	            
        </div>
    </div>
</div>

</body>
</html>