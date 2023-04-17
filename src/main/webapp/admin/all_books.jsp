<%@ page import="com.DAO.BookDAOimpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.awt.print.Book" %>
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
            <th scope="col">Id</th>
            <th scope="col">Image</th>
            <th scope="col">Book Name</th>
            <th scope="col">Author Name</th>
            <th scope="col">Price</th>
            <th scope="col">Book Categories</th>
            <th scope="col">Status</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
            List<BookDtl> listbooks =dao.getAllBooks();
            for (BookDtl b : listbooks)
            {
                %>
                <tr>
                    <td><%= b.getBookid() %></td>
                    <td><img src="../book/<%= b.getPhotoName() %>" style="width: 50px;height: 50px;" ></td>
                    <td><%= b.getBookname() %></td>
                    <td><%= b.getAuthor() %></td>
                    <td><%= b.getPrice() %></td>
                    <td><%= b.getBookCategory() %></td>
                    <td><%= b.getStatus() %></td>
                    <td>
                        <a href="#" class="btn btn-sm btn-primary">Edit</a>
                        <a href="#" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>
                <%
            }
        %>



        </tbody>
    </table>

</div>



</body>
</html>
