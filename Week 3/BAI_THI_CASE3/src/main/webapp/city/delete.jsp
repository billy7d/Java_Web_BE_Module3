<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 03/10/2020
  Time: 09:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Xoa thanh pho${city.cityName}</title>
</head>
<body>
<h1>Xoa thanh pho</h1>
<br>
<br>
<label>Ban co chac muon xoa thanh pho: ${city.cityName}</label>

<div>
<form method="post" action="/city?action=delete&idDel=${city.id}">
    <input type="submit" value="Xoa" style="float: left">

</form>
<a href="/city?action=city" style="float: left;margin-left: 10px"><button>Thoat</button></a>
</div>





</body>
</html>
