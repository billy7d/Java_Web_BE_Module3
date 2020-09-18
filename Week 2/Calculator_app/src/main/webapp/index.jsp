<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18-Sep-20
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="post" action="/calculate">
    First Operand: <input type="number" name="first"><br>
    Operator: <select name ="ope">
                <option   value="+">+</option>
                <option   value ="-">-</option>
                <option   value="*">*</option>
                <option   value="/">/</option>

                </select><br>
    Second Operand: <input type="number" name="second"><br>
    <input type="submit" value="calculate"  ><br>

</form>
<p>Result: ${result}</p>
</body>
</html>
