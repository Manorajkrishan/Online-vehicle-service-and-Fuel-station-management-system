package com.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contactusservlet
 */
@WebServlet("/contactusservlet")
public class contactusservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Name=request.getParameter("Name");
		String Email=request.getParameter("Mail");
		String phone=request.getParameter("YourNumber");
		String problem=request.getParameter("YourProblem");
		
		boolean feed;
		feed=reservationDBUtil.insertfeed(Name, Email, phone, problem);
		if(feed==true) {
			RequestDispatcher de=request.getRequestDispatcher("Home.jsp");
			de.forward(request, response);
			
		}else {
			RequestDispatcher de2=request.getRequestDispatcher("ContactUs.jsp");
			de2.forward(request, response);
		}
		
	}

}
