package com.pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/clogout")
public class CustomerLogoutservlet extends HttpServlet
{
		protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
		{
			HttpSession session=req.getSession(false);
			if(session==null)
			{
				req.setAttribute("msg", "Session Expired");
				RequestDispatcher rd=req.getRequestDispatcher("Customer_login.html");
				rd.forward(req, res);
				
			}
			else 
			{
			RequestDispatcher	rd=req.getRequestDispatcher("Logout.jsp");
			rd.forward(req, res);
			}
			
		}

	


}
