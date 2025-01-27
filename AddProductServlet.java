package com.pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/aps")
public class AddProductServlet  extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession session=req.getSession();
		if(session==null) 
		{
			req.setAttribute("msg", "Session Expired");
			RequestDispatcher rd=req.getRequestDispatcher("Adminlogin.html");
			rd.forward(req, res);
		}
		else 
		{
			ProductBean pbean=new ProductBean();
			pbean.setPcode(req.getParameter("pcode"));
			pbean.setPname(req.getParameter("pname"));
			pbean.setPcompany(req.getParameter("pcompany"));
			pbean.setPprice(req.getParameter("pprice"));
			pbean.setPqty(req.getParameter("pqty"));
			
		int rowCount=new AddProductDAO().insertData(pbean);
		
		if(rowCount>0) {
			System.out.println("data updated");
			req.setAttribute("msg","Product details are added");
			RequestDispatcher rd=req.getRequestDispatcher("AddProduct.jsp");
			rd.forward(req, res);
		}
		
		}
		
	}

}
