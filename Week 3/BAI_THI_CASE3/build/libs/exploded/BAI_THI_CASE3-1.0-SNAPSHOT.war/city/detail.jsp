<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 02/10/2020
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thanh pho ${city.cityName}</title>
</head>
<body>
<div>
    <h1>Thanh pho ${city.cityName}</h1>
    <a href="/city"><button>Xem danh sach thanh pho</button></a>
</div>

<div>
    <label>Ten: ${city.cityName}</label>
    <label>Quoc gia: ${city.nation}</label>
    <label>Dien tich: ${city.area}</label>
    <label>Dan so: ${city.danso}</label>
    <label>GDP: ${city.gdp}</label>
    <label>Gioi thieu: </label>
    <p>${city.description}</p>
</div>

<div>
    <a href="/city?action=edit&id=${city.id}"><button>Chinh sua</button></a>
    <a href="/city?action=delete&idShow=${city.id}" ><button>Xoa</button></a>
</div>

</body>
</html>
