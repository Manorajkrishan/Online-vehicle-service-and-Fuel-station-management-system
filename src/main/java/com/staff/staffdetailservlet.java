package com.staff;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class staffdetailservlet
 */
@WebServlet("/staffdetailservlet")
public class staffdetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//doGet(request, response);
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		
		
		String NIC= request.getParameter("nic");
		String name = request.getParameter("name");
		
		boolean isTrue;
		
		isTrue = staffDBUtil.validate(NIC,name);
		
		
		
			if(isTrue==true) {
		List<staff> staffdetails =staffDBUtil.statuscheck(NIC, name);
		request.setAttribute("staffDetails", staffdetails);
		//redirect
				RequestDispatcher dis= request.getRequestDispatcher("staffdetails.jsp");
				dis.forward(request, response);
				
		}else {
			out.println("<script type='text/javascript'");//coz we are displying this on web page instend of sys.out(for system print)
			out.println("alert('error');");
			out.println("location='reservationview.jsp'");
			out.println("</script>");

	}
	}
		
		
	}

