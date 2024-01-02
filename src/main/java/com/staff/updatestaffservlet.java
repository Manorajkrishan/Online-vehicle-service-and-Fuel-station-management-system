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
 * Servlet implementation class updatestaffservlet
 */
@WebServlet("/updatestaffservlet")
public class updatestaffservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("resid");
		String name = request.getParameter("name");
		String NIC = request.getParameter("nic");
		String number = request.getParameter("number");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String position = request.getParameter("position");
		String status = request.getParameter("status");
		
		
		boolean isSuccess;
		
		isSuccess =staffDBUtil.updatestaff(id, name, NIC, number, gender, address, position, status);
		
		if(isSuccess == true) {
			
			List<staff> staffDetails = staffDBUtil.getstaffdetails(id);
			request.setAttribute("staffDetails", staffDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("staffdetails.jsp");
			dis.forward(request, response);
		}
		else {
			//List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			//request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("uncusscees.jsp");
			dis.forward(request,response);
		}
					
	}
		
		
		
		
		
	}


