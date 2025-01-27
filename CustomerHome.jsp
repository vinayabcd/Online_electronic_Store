<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }
    h1 {
        color: #343a40;
    }
    .container {
        margin-top: 50px;
        text-align: center;
    }
    a {
        display: inline-block;
        margin: 10px;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 4px;
        font-size: 16px;
    }
    a:hover {
        background-color: #0056b3;
    }
    .welcome-message {
        font-size: 18px;
        margin-bottom: 30px;
        color: #343a40;
    }
</style>
</head>
<body>
<div class="container">
<%
CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
if (cbean != null) {
    out.println("<div class='welcome-message'>Welcome Mr. " + cbean.getCfname() + "!!!</div>");
} else {
    out.println("<div class='welcome-message'>Welcome, Guest!</div>");
}
%>
<a href="view2">View Product</a>
<a href="logout">Logout</a>
</div>
</body>
</html>
s