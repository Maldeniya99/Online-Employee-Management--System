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
<!DOCTYPE html>
<html>
<head>

<link rel= "stylesheet" type="text/css" href="css/view.css">
</head>
<body>
<div class="container">
	<table>
		<thead>
<tr>

<td><b>ID</b> </td>
<td><b>Name</b></td>
<td><b>email</b></td>
<td><b>Phone</b></td>
<td><b>Reason</b></td>

<td><b>StartingDateDate</b></td>
<td><b>EndingDateDate</b></td>
<td><b>Status</b></td>
<td><b>APPROVE</b></td>
<td><b>REJECT</b></td>

</tr>
</thead>
<tbody>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from data";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("reason") %></td>
<td><%=resultSet.getString("sDate") %></td>
<td><%=resultSet.getString("eDate") %></td>
<td><%=resultSet.getString("status") %></td>
<td><a class="button"  href="approve.jsp?id=<%=resultSet.getString("id")%>"><span>APPROVE</span></a></td>
<td><a class="button" href="reject.jsp?id=<%=resultSet.getString("id")%>"> <span>REJECT</span></a></td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
		</tbody>
	</table>
</div>
</body>
</html>
