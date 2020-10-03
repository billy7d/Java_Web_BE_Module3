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
    <title>Chinh sua thanh pho</title>
</head>
<body>
<center>
    <h1>chinh sua thanh pho</h1>

</center>
<div align="center">
    <form method="post" action="/city?action=edit">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Sua thanh pho ${city.cityName}
                </h2>
            </caption>
            <c:if test="${city != null}">
                <input type="hidden" name="id" required value="<c:out value='${city.id}' />"/>
            </c:if>
            <tr>
                <th>Ten:</th>
                <td>
                    <input type="text" name="name" size="45" required
                           value="<c:out value='${city.cityName}'/>"
                    />
                </td>
            </tr>
            <tr>
                <th>Quoc gia:</th>
                <td>
                    <select name="national" required>
                        <c:forEach var="country" items="${listCountries}">
                            <option value="${country.countryName}">
                                <c:out value="${country.countryName}"/>
                            </option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Dien Tich:</th>
                <td>
                    <input type="text" name="area" size="45" required
                           value="<c:out value='${city.area}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Dan so:</th>
                <td>
                    <input type="text" name="danso" size="45" required
                           value="<c:out value='${city.danso}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>GDP:</th>
                <td>
                    <input type="text" name="gdp" size="45" required
                           value="<c:out value='${city.gdp}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Gioi Thieu:</th>
                <td>
                    <input type="text" name="description" size="45" required
                           value="<c:out value='${city.description}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
                <td colspan="2" align="center">
                    <a href="/city?action=city"><input type="button" value="Thoat"/></a>
                </td>

            </tr>
        </table>
    </form>
</div>
</body>
</html>
