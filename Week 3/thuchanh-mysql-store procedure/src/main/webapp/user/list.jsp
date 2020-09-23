<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 22-Sep-20
  Time: 08:24
  To change this template use File | Settings | File Templates.
--%>
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

        <form method="post" action="/users?action=search">
            <input type="text" name="search" placeholder="input country">
            <input type="submit" value="Search">
        </form>
    </h2>
</center>
<form method="post">
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th>Id <a href="/users?action=sort&value=id">sort</a></th>
                <th>Name <a href="/users?action=sort&value=name">sort</a></th>
                <th>Email <a href="/users?action=sort&value=name">sort</a></th>
                <th>Country <a href="/users?action=sort&value=name">sort</a></th>
                <th>Action </th>

            </tr>
            <c:forEach items="${listUser}" var="user">
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.name}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.country}"/></td>
                    <td>
                        <a href="/users?action=edit&id=${user.id}">Edit</a>
                        <a href="/users?action=delete&id=${user.id}">Delete</a>
                    </td>

                </tr>
            </c:forEach>


        </table>
    </div>
</form>
</body>

</html>
