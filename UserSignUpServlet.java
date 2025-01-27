package com.pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cln")
public class UserSignUpServlet  extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		CustomerBean cbean=new CustomerBean();
		cbean.setCname(req.getParameter("cname"));
		cbean.setCpwd(req.getParameter("cpwd"));
		cbean.setCfname(req.getParameter("cfname"));
		cbean.setClname(req.getParameter("clname"));
		cbean.setCadd(req.getParameter("cadd"));
		cbean.setCmail(req.getParameter("cmail"));
		cbean.setCphone(req.getParameter("cphone"));
		
		CsignUpDAO eDao=new CsignUpDAO();
		int rowCount=eDao.insertCdata(cbean);
		
		if(rowCount>0) {
			System.out.println("yes");
			req.setAttribute("msg","Registered successfully");
			RequestDispatcher rd=req.getRequestDispatcher("Register.jsp");
			rd.forward(req, res);
		}
		else {
			System.out.println("no");
			req.setAttribute("msg","Something went roung try again!!!");
			RequestDispatcher rd=req.getRequestDispatcher("CSignup.html");
			rd.forward(req, res);
		}
			
	}
	

}
