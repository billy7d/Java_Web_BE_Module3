<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 17/09/2020
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sach khach hang: </h1>
<table width="100%" border="1" cellpadding="1" cellspacing="1">
    <tr>
        <th width="50%">Tên KH</th>
        <th width="10%">Mã KH</th>

    </tr>
    <c:forEach items="${arrayList1}" var="objCus">
        <tr>
            <td>${objCus.name }</td>
            <td>${objCus.dob }</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
