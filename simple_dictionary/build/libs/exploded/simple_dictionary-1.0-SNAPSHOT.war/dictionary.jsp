<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 17/09/2020
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String,String> dic = new HashMap<>();
%>
<%
    dic.put("hello","Xin chao");
    dic.put("book","Quyen sach");
    dic.put("dog","Con cho");
    dic.put("cat","Con meo");

    String search = request.getParameter("input");

    String result = dic.get(search);

    if (result!=null){
       out.println(result);
    } else {
        out.println("Not found");
    }


%>

</body>
</html>
