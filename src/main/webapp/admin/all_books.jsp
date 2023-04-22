<%@ page import="com.DAO.BookDAOimpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.awt.print.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<c:if test="${empty usobj}">
    <c:redirect url="../login.jsp" />
</c:if>
<c:if test="${not empty succ}">
    <p class="text-center text-success">${succ}</p>
    <c:remove var="succ" scope="session"></c:remove>
</c:if>
<c:if test="${not empty failed}">
    <p class="text-center text-danger">${failed}</p>
    <c:remove var="failed" scope="session"></c:remove>
</c:if>

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
                        <a href="edit_books.jsp?id=<%=b.getBookid() %>" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i>Edit</a>
                        <a href="../DeleteBooks?id=<%=b.getBookid()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i>Delete</a>
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
