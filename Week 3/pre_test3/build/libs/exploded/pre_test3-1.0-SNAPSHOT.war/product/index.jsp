<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>Product ID</th>
            <th>Product CategoryNo</th>
            <th>Product Name</th>
            <th>Product Price</th>

        </tr>
        <c:forEach var="p" items="${listProduct}">
            <tr>
                <td><c:out value="${p.id}"/></td>
                <td><c:out value="${p.categoryNo}"/></td>
                <td><c:out value="${p.productName}"/></td>
                <td><c:out value="${p.price}"/></td>
                <td>
                    <a href="/users?action=edit&id=${p.id}">Edit</a>
                    <a href="/users?action=delete&id=${p.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>