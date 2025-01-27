<%@ page import="com.pack1.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #333;
        }

        center {
            margin-top: 50px;
        }

        p {
            color: #555;
        }

        a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #007BFF;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            margin: 10px 0;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3;
        }

        .message {
            color: green;
            font-size: 18px;
            font-weight: bold;
        }

        .error {
            color: red;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <center>
        <% 
            // Retrieve the AdminBean from the session
            AdminBean abean = (AdminBean) session.getAttribute("abean");
            String msg = (String) request.getAttribute("msg");
            
            // Display the admin's first name if available
            if (abean != null) {
                out.println("<h2>Welcome, " + abean.getaFname() + "!</h2><br>");
            } else {
                out.println("<p class='error'>Session expired or not available. Please log in again.</p>");
            }
            
            // Display any message passed as a request attribute
            if (msg != null) {
                out.println("<p class='message'>" + msg + "</p>");
            }
        %>
        
        <!-- Admin actions -->
        <a href="AddProduct.html">Add Product</a><br>
        <a href="view1">View Product</a><br>
        <a href="logout">Logout</a>
    </center>
</body>
</html>
