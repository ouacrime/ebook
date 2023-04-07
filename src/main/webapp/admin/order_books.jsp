<%--
  Created by IntelliJ IDEA.
  User: OTHMANE
  Date: 03/04/2023
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
    <table class="table table-striped ">
        <thead class="bg-primary text-white">
        <tr>
            <th scope="col">Order id</th>
            <th scope="col">Name</th>
            <th scope="col">Email </th>
            <th scope="col">Addrese</th>
            <th scope="col">ph No</th>
            <th scope="col">Book Name</th>
            <th scope="col">Author</th>
            <th scope="col">Price</th>
            <th scope="col">Payement type</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>

        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
        </tr>
        </tbody>
    </table>

</div>



</body>
</html>
