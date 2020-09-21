<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 21-Sep-20
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title> Add new product</title>
</head>
<body>
<h1>Add new product</h1>

<p><a href="/products">Back to product list</a> </p>

<form method="post">
    <table>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>Brand:</td>
            <td><input type="text" name="brand"/> </td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="number" name="price"/> </td>
        </tr>
        <tr>
            <td>Description</td>
            <td><input type="text" name="description"></td>
        </tr>
        <tr><input type="submit" value="Add product"/></tr>
    </table>

</form>

</body>
</html>
