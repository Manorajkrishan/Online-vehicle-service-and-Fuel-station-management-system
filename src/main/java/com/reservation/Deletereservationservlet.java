package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Deletereservationservlet")
public class Deletereservationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("resid");
		boolean trueth=reservationDBUtil.deletereservation(id);
		
		
		
		if (trueth == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("resevation.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<reservation> cusDetails = reservationDBUtil.getreservationDetails(id);
			request.setAttribute("Details", cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("status.jsp");
			dispatcher.forward(request, response);
		}
	}

}
