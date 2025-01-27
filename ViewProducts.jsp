<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Product Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #343a40;
        }

        .container {
            width: 80%;
            margin: auto;
            text-align: center;
        }

        .product-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .product-table th, .product-table td {
            border: 1px solid #dee2e6;
            padding: 10px;
            text-align: center;
        }

        .product-table th {
            background-color: #007bff;
            color: white;
        }

        .product-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            color: #007bff;
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3;
            color: white;
        }

        .logout {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>
            <% 
                AdminBean abean = (AdminBean) session.getAttribute("abean");
                ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("ProductList");
                out.println("Hello, " + abean.getaFname() + "! These are your product details:");
            %>
        </h2>

        <% if (al == null || al.size() == 0) { %>
            <p>No products are available or inserted.</p>
        <% } else { %>
            <table class="product-table">
                <thead>
                    <tr>
                        <th>Product Code</th>
                        <th>Product Name</th>
                        <th>Company</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        for (ProductBean pb : al) { 
                    %>
                        <tr>
                            <td><%= pb.getPcode() %></td>
                            <td><%= pb.getPname() %></td>
                            <td><%= pb.getPcompany() %></td>
                            <td><%= pb.getPprice() %></td>
                            <td><%= pb.getPqty() %></td>
                            <td>
                                <a href="edit?pcode=<%= pb.getPcode() %>">Edit</a>
                                <a href="delete?pcode=<%= pb.getPcode() %>">Delete</a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } %>

        <div class="logout">
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
