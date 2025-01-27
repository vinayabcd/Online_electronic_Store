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
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #343a40;
        }
        a {
            text-decoration: none;
            font-size: 18px;
            color: #007bff;
        }
        a:hover {
            color: #0056b3;
        }
        .welcome-container {
            margin-top: 100px;
        }
        .nav-links {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <center class="welcome-container">
        <h1>
            <% 
                AdminBean abean = (AdminBean) session.getAttribute("abean");
                if (abean != null) {
                    out.println("Welcome, Mr. " + abean.getaFname() + "!");
                } else {
            %>
            <script>
                alert("Session expired! Please log in again.");
                window.location.href = "AdminLogin.html";
            </script>
            <% 
                }
            %>
        </h1>
        
        <div class="nav-links">
            <a href="AddProduct.html">Add Product</a><br><br>
            <a href="view1">View Product</a><br><br>
            <a href="logout">Logout</a>
        </div>
    </center>
</body>
</html>
