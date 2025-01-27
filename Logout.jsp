<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Logout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .logout-container {
            text-align: center;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .logout-message {
            font-size: 20px;
            color: #28a745;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #007bff;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3;
        }

        a:active {
            background-color: #003f7f;
        }
    </style>
</head>
<body>
    <div class="logout-container">
        <%
            session.invalidate();
        %>
        <p class="logout-message">Logged out successfully!</p>
        <a href="index.html">Go to Homepage</a>
    </div>
</body>
</html>
