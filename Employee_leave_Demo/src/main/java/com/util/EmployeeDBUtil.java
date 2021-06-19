package com.util;

import java.sql.Connection;





import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Employee;




public class EmployeeDBUtil  {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
public static boolean validate(String name) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from data  where name='"+name+"'" ;
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Employee> getEmployee(String name) {
		
		ArrayList<Employee>employee = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from data where name='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name1 = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String reason = rs.getString(5);
				String sDate = rs.getString(6);
				String eDate = rs.getString(7);
				String status = rs.getString(8);
				
				Employee emp = new Employee(id,name1,email,phone,reason,sDate,eDate,status);
				employee.add(emp);
			}
			
		} catch (Exception e) {
			
		}
		
		return employee;	
	}


	
    
    
    
}
