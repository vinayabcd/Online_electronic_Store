package com.pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Buy")
public class BuyProductServlet extends HttpServlet
{
	ProductBean pb = null;
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession session=req.getSession(false);
		if(session==null) 
		{
			req.setAttribute("msg", "session got Expired");
			RequestDispatcher rd=req.getRequestDispatcher("Customer_login.html");
			rd.forward(req, res);
		}
		else 
		{
			String pcode=req.getParameter("pcode");
			ProductBean pb=new BuyProductServletDAO().buyProduct(pcode);
			req.setAttribute("pbean", pb);
			RequestDispatcher rd=req.getRequestDispatcher("BuyProduct.jsp");
			rd.forward(req, res);
			
		}
	

}
}
