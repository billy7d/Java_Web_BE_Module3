<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 21-Sep-20
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit form</title>
</head>
<body>
<a href="/products">Back to product list</a>

<form method="post">
    <table>
        <tr>
        <td>Name: </td>
        <td><input type="text" name="name" value="${product.getName()}"></td>
        </tr>
        <tr>
            <td>Brand: </td>
            <td><input type="text" name="brand" value="${product.getBrand()}"></td>
        </tr>
        <tr>
            <td>Price: </td>
            <td><input type="text" name="price" value="${product.getPrice()}"></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td><input type="text" name="description" value="${product.getDescription()}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Edit"/> </td>
        </tr>


    </table>


</form>

</body>
</html>
