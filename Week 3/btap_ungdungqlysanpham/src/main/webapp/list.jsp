<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 20/09/2020
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product list's</h1>
<table>
    <tr>
    <td> Name </td>
    <td> Brand </td>
    <td> Price </td>
    <td> Description </td>
    </tr>
    <c:forEach items="${Products}" var="product">
    <tr>
        <td><a href="/products?action=view&id=${product.getId()}"></a>${product.getName()}</td>
        <td>${product.getBrand()}</td>
        <td>${customer.getPrice()}</td>
        <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
        <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>

    </tr>
    </c:forEach>


</table>

</body>
</html>
