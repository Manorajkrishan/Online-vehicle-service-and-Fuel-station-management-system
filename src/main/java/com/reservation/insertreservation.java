package com.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/insertreservation")
public class insertreservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name=request.getParameter("uname");
		String number=request.getParameter("cnum");
		String Setype=request.getParameter("satic");
		String date=request.getParameter("date");
		String vnum=request.getParameter("vt");
		String vtype =request.getParameter("ty");
		String paym=request.getParameter("pay");
		String nic=request.getParameter("nic");
		
		boolean mk;
		mk=reservationDBUtil.insertre(name, number, Setype, date, vnum, vtype,paym,nic);
		
		if(mk==true) {
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request,response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("uncusscees.jsp");
			dis2.forward(request,response);
		}
		
		
		
	}

}
