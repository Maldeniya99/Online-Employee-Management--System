<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "employee";
String userid = "root";
String password = "manushika";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from data  where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<head>

<link rel= "stylesheet" type="text/css" href="css/approve.css">
</head>

<div class="container-fluid px-1 py-5 mx-auto">
    <div class="row d-flex justify-content-center">
        <div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
  <div class="card">
               <p style="font-size:30px;">Employee Leave Request Form</p>
              <form method="post" action="approve-pro.jsp" class="form-card">
                    <div class="row justify-content-between text-left">


 <div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b></b> <br> <input type="hidden" name="id" value="<%=resultSet.getString("id") %>"readonly> </div>
<div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>Name</b></label> <br> <input type="text" name="name" value="<%=resultSet.getString("name") %>"readonly> </div>
<div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>Email</b></label> <br> <input type="text" name="email" value="<%=resultSet.getString("email") %>"readonly> </div>
<div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>PhoneNumber</b></label> <br> <input type="text" name="phone" value="<%=resultSet.getString("phone") %>"readonly></div>
<div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>Reason</b></label> <br> <input type="text" name="reason" value="<%=resultSet.getString("reason") %>"readonly></div>
<div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>SDate</b></label> <br> <input type="text" name="sDate" value="<%=resultSet.getString("sDate") %>"readonly> </div>
<div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b>EDate</b></label> <br> <input type="text" name="eDate" value="<%=resultSet.getString("eDate") %>"readonly> </div>
<div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3"> <b></b></label> <br><input type="hidden" name="status" value="<%=resultSet.getString("status") %>"readonly> </div>


  







<input type="submit" value="APPROVE LEAVE REQUEST">
</div>
</form>
            </div>
        </div>
    </div>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>