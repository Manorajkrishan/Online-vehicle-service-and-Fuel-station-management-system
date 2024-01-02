package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Updateregistationservlet")
public class Updateregistationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("resid");
		String name = request.getParameter("name");
		String phone = request.getParameter("cnum");
		String stype = request.getParameter("sertype");
		String date = request.getParameter("date");
		String vtype = request.getParameter("vnum");
		String vnum = request.getParameter("vtype");
		String nic = request.getParameter("nic");
		String payment = request.getParameter("payment");
		
		boolean isSuccess;
		
		isSuccess =reservationDBUtil.updatereservation(id, name, phone, stype, date, vnum, vtype, payment, nic);
		
		if(isSuccess == true) {
			
			List<reservation> reservationDetails = reservationDBUtil.getreservationDetails(id);
			request.setAttribute("Details", reservationDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("status.jsp");
			dis.forward(request, response);
		}
		else {
			//List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			//request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("uncusscees.jsp");
			dis.forward(request, response);
		}
	}

}
