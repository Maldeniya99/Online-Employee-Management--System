package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Employee;
import com.service.DBConnect;


public class DeleteDBUtil  {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    

public static boolean deleteEmployee(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from data where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
public static List<Employee> getEmployeeDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Employee> emp= new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from data where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String reason = rs.getString(5);
			String sDate = rs.getString(6);
			String eDate = rs.getString(7);
			String status = rs.getString(8);
			
			Employee c = new Employee(id,name,email,phone,reason,sDate,eDate,status);
			emp.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return emp;	
}
	
	
	
	
	
	
}
