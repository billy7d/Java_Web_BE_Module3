<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Them thanh pho</title>
</head>
<body>
<%--<center>--%>
<%--    <h1>Them thanh pho</h1>--%>
<%--    <h2>--%>
<%--        <a href="users?action=users">List All Users</a>--%>
<%--    </h2>--%>
<%--</center>--%>
<div align="center">
    <form method="post" action="/city?action=create">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Them thanh pho
                </h2>
            </caption>

            <tr>
                <th>Ten:</th>
                <td>
                    <input type="text" name="name" size="45" required />
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
                    <input type="number" name="area" size="45" min="1" required/>
                </td>
            </tr>
            <tr>
                <th>Dan so:</th>
                <td>
                    <input type="number" name="danso" size="45" min="1" required/>
                </td>
            </tr>
            <tr>
                <th>GDP:</th>
                <td>
                    <input type="number" name="gdp" size="45" min="1" required/>
                </td>
            </tr>
            <tr>
                <th>Gioi Thieu:</th>
                <td>
                    <input type="text" name="description" size="45" required/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Nhap thanh pho"/>
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