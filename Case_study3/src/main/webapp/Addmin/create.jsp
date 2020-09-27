<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="trangchu?action=ices">List All Users</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Ice</h2>
            </caption>
            <tr>
                <th>IceCream Category:</th>
                <td>
                    <select name="category">
                        <option value="1">1 - Kem que</option>
                        <option value="2">2 - Oc Que </option>

                    </select>
                </td>
            </tr>
            <tr>
                <th>IceCream Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>

            <tr>
                <th>IceCream Image's src:</th>
                <td>
                    <input type="text" name="src" id="src" size="45"/>
                </td>
            </tr>
            <tr>
                <th>IceCream price:</th>
                <td>
                    <input type="number" name="price" id="price" size="45"/>
                </td>
            </tr>
            <tr>
                <th>IceCream discount:</th>
                <td>
                    <input type="number" name="discount" id="discount" size="45"/>
                </td>
            </tr>
            <tr>
                <th>IceCream description:</th>
                <td>
                    <input type="text" name="description" id="description" size="45"/>
                </td>
            </tr>
            <tr>
                <th>IceCream sold quantity:</th>
                <td>
                    <input type="number" name="soldQuantity" id="soldQuantity" size="45"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
