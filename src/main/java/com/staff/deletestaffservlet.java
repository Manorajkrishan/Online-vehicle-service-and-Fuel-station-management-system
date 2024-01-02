package com.staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deletestaffservlet
 */
@WebServlet("/deletestaffservlet")
public class deletestaffservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String mid=request.getParameter("resid");
		boolean trueth=staffDBUtil.deletestaff(mid);
		
		
		
		if (trueth == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("insertstaff.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<staff> staffDetails = staffDBUtil.getstaffdetails(mid);
			request.setAttribute("staffDetails", staffDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("status.jsp");
			dispatcher.forward(request,response);
		}
	}
	}

