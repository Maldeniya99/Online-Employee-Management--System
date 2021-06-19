package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Employee;
import com.util.UpdateDBUtil;

@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String reason = request.getParameter("reason");
		String sDate = request.getParameter("sDate");
		String eDate = request.getParameter("eDate");
		
		boolean isTrue;
		
		isTrue = UpdateDBUtil.updateemployee(id, name, email, phone, reason, sDate,eDate);
		
		if(isTrue == true) {
			
			List<Employee> empDetails = UpdateDBUtil.getEmployeeDetails(id);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("search.jsp");
			dis.forward(request, response);
		}
		else {
			List<Employee> empDetails =UpdateDBUtil.getEmployeeDetails(id);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
