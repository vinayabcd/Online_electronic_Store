<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        center {
            margin-top: 50px;
        }
        h1 {
            color: #333;
        }
        a {
            text-decoration: none;
            color: #007BFF;
            font-size: 18px;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <center>
        <%
            AdminBean abean = (AdminBean) session.getAttribute("abean");
            String msg = (String) request.getAttribute("msg");
            if (abean != null) {
        %>
        <h1>Welcome, Mr. <%= abean.getaUsername() %></h1>
        <p><strong>Message:</strong> <%= msg != null ? msg : "No updates." %></p>
        
        <nav>
            <a href="AddProduct.html">Add Product</a><br><br>
            <a href="view1">View Product</a><br><br>
            <a href="logout">Logout</a>
        </nav>
        <% 
            } else { 
        %>
        <p>Your session has expired. Please <a href="AdminLogin.html">log in</a> again.</p>
        <% 
            } 
        %>
    </center>
</body>
</html>
