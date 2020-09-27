<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 27/09/2020
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Shopping cart</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/trangchu">Continue shopping</a>
<table cellpadding="2" cellspacing="2" border="1">
    <tr>
        <th>Ice id</th>
        <th>Ice image</th>
        <th>Ice name</th>
        <th>Ice price</th>
        <th>Ice description</th>
        <th>Ice quantity</th>
        <th>Price</th>
    </tr>
    <c:set var="total" value="0"></c:set>
    <c:forEach var="item" items="${sessionScope.cart}">
        <c:set var="total" value="${total + item.iceCream.price *item.quantity}"></c:set>
        <tr>

            <td>${item.iceCream.iceCreamId}</td>
            <td><img src="${item.iceCream.src}" width="120px"></td>
            <td>${item.iceCream.name}</td>
            <td>${item.iceCream.price}</td>
            <td>${item.iceCream.description}</td>
            <td>${item.quantity}</td>
            <td>${item.iceCream.price*item.quantity}</td>
            <td align="center">
                <a href="${pageContext.request.contextPath}/cart?action=remove&id=${item.iceCream.iceCreamId}"
                   onclick="return confirm('Are you sure?')">Remove</a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="6" align="right">Total</td>
        <td>${total}</td>
    </tr>

</table>
</body>
</html>
