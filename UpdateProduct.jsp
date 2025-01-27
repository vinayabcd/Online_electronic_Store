<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
        color: #343a40;
    }
    .container {
        text-align: center;
        margin-top: 50px;
    }
    h1 {
        color: #007bff;
        font-size: 24px;
    }
    .message {
        font-size: 18px;
        margin: 20px 0;
        color: #28a745;
    }
    a {
        display: inline-block;
        margin: 10px 0;
        text-decoration: none;
        color: #007bff;
        font-size: 16px;
        padding: 10px 20px;
        border: 1px solid #007bff;
        border-radius: 4px;
        transition: background-color 0.3s, color 0.3s;
    }
    a:hover {
        background-color: #007bff;
        color: #fff;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Welcome, Admin</h1>
    <%
    AdminBean abean = (AdminBean) session.getAttribute("abean");
    String msg = (String) request.getAttribute("msg");

    if (abean != null) {
        out.println("<div class='message'>Hello " + abean.getaLname() + ", updated successfully.</div>");
    }

    if (msg != null) {
        out.println("<div class='message'>" + msg + "</div>");
    }
    %>
    <a href="AddProduct.html">Add Product</a><br>
    <a href="view1">View Product</a><br>
    <a href="logout">Logout</a>
</div>
</body>
</html>
