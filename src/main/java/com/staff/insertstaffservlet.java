package com.staff;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class insertstaffservlet
 */
@WebServlet("/insertstaffservlet")
public class insertstaffservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("uname");
		String NIC=request.getParameter("nic");
		String number=request.getParameter("cnum");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String position =request.getParameter("satic");
		String status=request.getParameter("status");
		
		boolean nik ;
		nik=staffDBUtil.insertfeed(name, NIC, number, gender, address, position, status);
		
		if(nik==true) {
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request,response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("uncusscees.jsp");
			dis2.forward(request,response);
		}
	}
	
	}


