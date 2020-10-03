<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Danh sach thanh pho</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
<center>
    <h1>Danh sach thanh pho</h1>
    <h2>
        <a href="/city?action=create">Them thanh pho</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">

        <tr>
            <th>#</th>
            <th>Thanh pho</th>
            <th>Quoc Gia</th>
            <th>Dien tich</th>
            <th>Dan so</th>
            <th>GDP</th>
            <th>Mo ta ve thanh pho</th>
            <th>Hanh dong</th>
        </tr>

        <c:forEach var="city" items="${listCity}" varStatus="theCount">
            <tr>
                <td><c:out value="${theCount.count}"/></td>
                <td><a href="/city?action=detail&id=${city.id}"><c:out value="${city.cityName}"/></a></td>
                <td><c:out value="${city.nation}"/></td>
                <td><c:out value="${city.area}"/></td>
                <td><c:out value="${city.danso}"/></td>
                <td><c:out value="${city.gdp}"/></td>
                <td><c:out value="${city.description}"/></td>
                <td>
                    <a href="/city?action=edit&id=${city.id}">Edit</a>
                    <a href="/city?action=delete&idShow=${city.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>


        <script type="text/javascript">
            let msg ='<%=session.getAttribute("getAlert")%>';
            if (msg != "null") {
                function setAlert(){
                    alert("Tac vu da thanh cong");
                }
            }
        </script>
    </table>

</div>
</body>
<script type="text/javascript"> window.onload = setAlert(); </script>
</html>