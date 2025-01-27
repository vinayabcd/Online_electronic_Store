package com.pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession session=req.getSession(false);
		
		if(session==null) 
		{
			req.setAttribute("msg", "session Expired");
			RequestDispatcher rd=req.getRequestDispatcher("Admin_login.html");
			rd.forward(req, res);
		}
		else 
		{
			String code=req.getParameter("pcode");
			int rowCount=new DeleteProductDAO().deleteProduct(code);
			if(rowCount>0) 
			{
				req.setAttribute("msg","selected product Deleted");
				
				RequestDispatcher rd=req.getRequestDispatcher("DeleteProduct.jsp");
				rd.forward(req, res);
			}
			else {
				req.setAttribute("msg","selected product not Deleted");

			}
			
			
		}
		
		
	}

}
