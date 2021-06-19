package com.util;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class InsertDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	
	
public static boolean insertemployee(String name, String email, String phone,String reason,String sDate,String eDate) {
	
	boolean isSuccess = false;
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
	    String sql = "insert into data values (0,'"+name+"','"+email+"','"+phone+"','"+reason+"','"+sDate+"','"+eDate+"',default)";
	   
		int rs = stmt.executeUpdate(sql);
	
		
		if(rs > 0 ) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

}