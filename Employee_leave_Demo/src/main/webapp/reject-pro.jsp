<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/employee";%>
<%!String user = "root";%>
<%!String psw = "manushika";%>
<%
String id = request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String reason=request.getParameter("reason");
String sDate=request.getParameter("sDate");
String eDate=request.getParameter("eDate");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update data set id=?,name=?,email=?,phone=?,reason=? ,sDate=?,eDate=?,status='reject'where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, name);
ps.setString(3, email);
ps.setString(4,phone);
ps.setString(5, reason);
ps.setString(6, sDate);
ps.setString(7, eDate);

int i = ps.executeUpdate();
if(i > 0)
{
	RequestDispatcher dispatcher = request.getRequestDispatcher("view.jsp");
	dispatcher.forward(request, response);
/* out.print("Leave approved Successfully"); */
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>