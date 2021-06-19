package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.InsertDBUtil;


@WebServlet("/EmployeeInsert")
public class InsertEmployeeServlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String reason= request.getParameter("reason");
		String sDate= request.getParameter("sDate");
		String eDate= request.getParameter("eDate");
		
		boolean isTrue;
		
		isTrue = InsertDBUtil.insertemployee(name, email, phone,  reason,sDate,eDate);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("search.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}


}
