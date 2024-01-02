package com.reservation;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;





@WebServlet("/restatusservlet")
public class restatusservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		
		
		String Vnumber= request.getParameter("vhn");
		String NIC = request.getParameter("nic");
		
		boolean isTrue;
		
		isTrue = reservationDBUtil.validate(Vnumber,NIC);
		
		
		
			if(isTrue==true) {
		List<reservation> reservationDetails =reservationDBUtil.statuscheck(Vnumber,NIC);
		request.setAttribute("Details", reservationDetails);
		//redirect
				RequestDispatcher dis= request.getRequestDispatcher("status.jsp");
				dis.forward(request, response);
				
		}else {
			out.println("<script type='text/javascript'");//coz we are displying this on web page instend of sys.out(for system print)
			out.println("alert('Your vehicle number or NIC is incorrect');");
			out.println("location='reservationview.jsp'");
			out.println("</script>");
		}
		
		
		
	}

}
