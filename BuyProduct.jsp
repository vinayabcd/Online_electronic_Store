<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Product</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }
    h1, p {
        color: #343a40;
    }
    .container {
        margin-top: 50px;
        text-align: center;
    }
    form {
        background: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 40%;
        margin: 20px auto;
        text-align: left;
    }
    label {
        font-weight: bold;
        display: block;
        margin-top: 10px;
    }
    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ced4da;
        border-radius: 4px;
        background-color: #f8f9fa;
        font-size: 14px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 10px;
    }
    input[type="submit"]:hover {
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
ProductBean pbean = (ProductBean) request.getAttribute("pbean");

if (cbean != null) {
    out.println("<div class='welcome-message'>Hello " + cbean.getCfname() + ", please enter product details below:</div>");
} else {
    out.println("<div class='welcome-message'>Welcome, please log in to place an order.</div>");
}
%>
<form action="Order" method="post">
    <label for="pcode">Product Code:</label>
    <input type="text" id="pcode" name="pcode" value="<%=pbean.getPcode() %>">

    <label for="pname">Product Name:</label>
    <input type="text" id="pname" name="pname" value="<%=pbean.getPname() %>">

    <label for="pcompany">Product Company:</label>
    <input type="text" id="pcompany" name="pcompany" value="<%=pbean.getPcompany() %>">

    <label for="pPrice">Product Price:</label>
    <input type="text" id="pPrice" name="pPrice" value="<%=pbean.getPprice() %>">

    <label for="Pqty">Available Quantity:</label>
    <input type="text" id="Pqty" name="Pqty" value="<%=pbean.getPqty() %>">

    <label for="rqty">Required Quantity:</label>
    <input type="text" id="rqty" name="rqty" required>

    <input type="submit" value="Place Order">
</form>
</div>
</body>
</html>
