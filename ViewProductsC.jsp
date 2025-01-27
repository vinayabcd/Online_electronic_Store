<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Products</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 20px;
    }

    h1, h2 {
        text-align: center;
        color: #007bff;
    }

    .product-container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        background-color: white;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        border: 1px solid #dee2e6;
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #007bff;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    a {
        color: #007bff;
        text-decoration: none;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
    }

    .no-products {
        color: #dc3545;
        text-align: center;
        font-weight: bold;
    }
</style>
</head>
<body>
<div class="product-container">
    <h2>Available Products</h2>
    <%
    CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
    ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("ProductList");

    out.println("<h3>Hello, " + cbean.getCfname() + "!</h3>");

    if (al.size() == 0) {
        out.println("<p class='no-products'>No products available.</p>");
    } else {
        out.println("<table>");
        out.println("<tr><th>Product Code</th><th>Product Name</th><th>Company</th><th>Price</th><th>Quantity</th><th>Action</th></tr>");
        Iterator<ProductBean> i = al.iterator();
        while (i.hasNext()) {
            ProductBean pb = i.next();
            out.println("<tr>");
            out.println("<td>" + pb.getPcode() + "</td>");
            out.println("<td>" + pb.getPname() + "</td>");
            out.println("<td>" + pb.getPcompany() + "</td>");
            out.println("<td>" + pb.getPprice() + "</td>");
            out.println("<td>" + pb.getPqty() + "</td>");
            out.println("<td><a href='Buy?pcode=" + pb.getPcode() + "'>Buy</a></td>");
            out.println("</tr>");
        }
        out.println("</table>");
    }
    %>
</div>
</body>
</html>
