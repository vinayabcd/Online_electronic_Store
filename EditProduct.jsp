<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        center {
            margin-top: 50px;
        }

        h2 {
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
            margin: auto;
        }

        input[type="text"], input[type="hidden"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .message {
            margin-bottom: 20px;
            font-size: 18px;
            color: #555;
        }
    </style>
</head>
<body>
    <center>
        <%
            AdminBean abean = (AdminBean) session.getAttribute("abean");
            ProductBean pb = (ProductBean) request.getAttribute("pbean");
            out.println("Hello " + abean.getaLname() + pb.getPname() + " Details available for edit <br><br>");
        %>
        <form action="update" method="post">
            Product Price:
            <input type="text" name="pPrice" value="<%= pb.getPprice() %>"><br><br>
            Product Qty:
            <input type="text" name="Pqty" value="<%= pb.getPqty() %>"><br><br>
            <input type="hidden" name="pcode" value="<%= pb.getPcode() %>">
            <input type="submit" value="Update">
        </form>
    </center>
</body>
</html>
