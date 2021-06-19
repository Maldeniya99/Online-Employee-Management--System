<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel= "stylesheet" type="text/css" href="css/insert.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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


	<div class="container-fluid px-1 py-5 mx-auto">
    <div class="row d-flex justify-content-center">
        <div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
            
           
            <div class="card">
               <p style="font-size:40px;"><b>Employee Leave Request </b></p>
                <form class="form-card" action="insert" method="post">
                    <div class="row justify-content-between text-left">
                   
                       <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>UserName</b><span class="text-danger"> *</span></label> <br> <input type="text" name="name"> </div>
                       <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"><b> Email</b><span class="text-danger"> *</span></label><br> <input type="text" name="email"> </div>
                    </div>
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"><b> PhoneNumber</b><span class="text-danger"> *</span></label><br> <input type="text" name="phone"> </div>
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>Reason</b><span class="text-danger"> *</span></label><br> <input type="text" name="reason"> </div>
                    </div>
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"><b> StartingDate</b><span class="text-danger"> *</span><br></label> <input type="text" name="sDate" id="datepicker1"> </div>
                    </div>
                     <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>EndingDate</b><span class="text-danger"> *</span><br></label> <input type="text" name="eDate" id="datepicker2"> </div>
                    </div>
                   <br>
                   <br>
              
                    <div class="wrap">
                        <div class="form-group col-sm-6"> <button type="submit" name="submit" class="button">Request </button> </div>
                    </div>

                    
                </form>
            </div>
        </div>
    </div>
</div>





</body>
</html>