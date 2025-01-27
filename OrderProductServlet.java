package com.pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Order")
public class OrderProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
    {
        HttpSession session = req.getSession(false);
        if (session == null) {
            req.setAttribute("msg", "Session expired! Please log in again.");
            RequestDispatcher rd = req.getRequestDispatcher("Customer_login.html");
            rd.forward(req, res);
           
        }

        OrderProductDAO odao = new OrderProductDAO();

    
        String pcode = req.getParameter("pcode");
        String pname = req.getParameter("pname");
        String pPrice = req.getParameter("pPrice");
        String pQty = req.getParameter("Pqty");
        String rQty = req.getParameter("rqty");

        try {
           
            int crQty = Integer.parseInt(rQty);
            int avlQty = Integer.parseInt(pQty);
            double price=Double.parseDouble(pPrice);

           
            if (crQty > avlQty) 
            {
                req.setAttribute("msg", "Requested quantity exceeds available stock.");
                RequestDispatcher rd = req.getRequestDispatcher("Order.jsp");
                rd.forward(req, res);
                
            }

            OrderBean order = new OrderBean();
            order.setPcode(pcode);
            order.setPname(pname);
            order.setPrice(pPrice);
            order.setPqty(pQty);
            order.setRqty(rQty);
            
        
			double totalPrice = crQty * price;
            order.setTotalprice(totalPrice);
            
            int rowCount = odao.orderProduct(order);
            if (rowCount > 0) {
            	session.setAttribute("order", order);
                req.setAttribute("msg", "Order placed successfully!");
                RequestDispatcher rd = req.getRequestDispatcher("Order.jsp");
                rd.forward(req, res);
            } else {
                req.setAttribute("msg", "Please try again");
                RequestDispatcher rd = req.getRequestDispatcher("ViewProductsC.jsp");
                rd.forward(req, res);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
