<%--
  Created by IntelliJ IDEA.
  User: OTHMANE
  Date: 03/04/2023
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>User:Home</h1>
    <c:if test="${not empty usobject}">
        <p class="text-center text-success">${usobj.name}</p>
        <p class="text-center text-success">${usobj.email}</p>
    </c:if>
</body>
</html>
