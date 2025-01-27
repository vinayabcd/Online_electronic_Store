<%@page import="com.pack1.OrderBean"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }
    .container {
        margin: 50px auto;
        text-align: center;
        width: 50%;
        background: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h1 {
        color: #343a40;
        margin-bottom: 20px;
    }
    .order-details {
        text-align: left;
        font-size: 16px;
        line-height: 1.8;
        color: #495057;
    }
    .order-details strong {
        color: #007bff;
    }
    a {
        display: inline-block;
        margin: 10px 5px;
        text-decoration: none;
        color: #fff;
        background-color: #007bff;
        padding: 10px 20px;
        border-radius: 4px;
        font-size: 14px;
        transition: background-color 0.3s ease;
    }
    a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Order Confirmation</h1>
    <%
    CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
    OrderBean or = (OrderBean) session.getAttribute("order");

    if (cbean != null && or != null) {
    %>
    <p>Hello, <strong><%= cbean.getCfname() %></strong>! Your order details are as follows:</p>
    <div class="order-details">
        <p><strong>Product Name:</strong> <%= or.getPname() %></p>
        <p><strong>Product Quantity:</strong> <%= or.getRqty() %></p>
        <p><strong>Total Price: Rs.</strong> <%= or.getTotalprice() %></p>
    </div>
    <div>
        <a href="ViewProductsC.jsp">View More Products</a>
        <a href="clogout">Logout</a>
    </div>
    <% 
    } else {
        out.println("<p>Order details are not available. Please try again later.</p>");
    } 
    %>
</div>
</body>
</html>
