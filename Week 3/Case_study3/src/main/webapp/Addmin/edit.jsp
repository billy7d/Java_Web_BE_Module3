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
        <a href="trangchu?action=ices">Back to homepage</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Ice
                </h2>
            </caption>
            <c:if test="${ice != null}">
                <input type="hidden" name="id" value="<c:out value='${ice.id}' />"/>
            </c:if>
            <tr>
                <th>Ice Category:</th>
                <td>
                    <input type="number" name="category" size="45"
                           value="<c:out value='${ice.categoryId}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Ice Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${ice.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Ice Image:</th>
                <td>
                    <input type="text" name="src" size="45"
                           value="<c:out value='${ice.src}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Ice Discount:</th>
                <td>
                    <input type="number" name="discount" size="45"
                           value="<c:out value='${ice.discount}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Ice Price:</th>
                <td>
                    <input type="number" name="price" size="45"
                           value="<c:out value='${ice.price}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Description:</th>
                <td>
                    <input type="text" name="description" size="45"
                           value="<c:out value='${ice.description}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Sold Quantity:</th>
                <td>
                    <input type="number" name="soldQuantity" size="45"
                           value="<c:out value='${ice.soldQuantity}' />"
                    />
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

