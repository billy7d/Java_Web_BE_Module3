<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Danh sach thanh pho</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<center>
    <h1>Danh sach thanh pho</h1>
    <h2>
        <a href="/city?action=create">Them thanh pho</a>
    </h2>
</center>
<div class="container">
    <div class="table table-responsive table-hover table-striped">
    <table>
    <thead>
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
    </thead>

    <tbody>
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
    </tbody>

    </table>
    </div>
</div>
<script type="text/javascript">
    let msg ='<%=session.getAttribute("getAlert")%>';
    if (msg != "null") {
        function setAlert(){
            alert("Tac vu da thanh cong");
        }
    }
</script>
</body>
<script type="text/javascript"> window.onload = setAlert(); </script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>