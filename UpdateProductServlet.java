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
@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet
{

	ProductBean pb = null;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException 
	{
		HttpSession session=req.getSession(false);
		if(session==null)
		{
			req.setAttribute("msg", "Session Expired");
			RequestDispatcher rd=req.getRequestDispatcher("AdminLogin.html");
			rd.forward(req, res);
			
		}
		else
		{
			String pcode=req.getParameter("pcode");
			ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("ProductList");
			
			Iterator<ProductBean> i=al.iterator();
			while(i.hasNext())
			{
				 pb=i.next();
				if(pcode.equals(pb.getPcode()))
				{
					break;
				}
			}
			pb.setPprice(req.getParameter("pPrice"));
			pb.setPqty(req.getParameter("Pqty"));
			
			int rowCount=new UpdateProductDAO().updateProduct(pb);
			
			if(rowCount>0) {
				System.out.println("data updated");
				req.setAttribute("msg","data updated ");
				RequestDispatcher rd=req.getRequestDispatcher("UpdateProduct.jsp");
				rd.forward(req, res);
			}
			
			
		}
	}
		
	

}
