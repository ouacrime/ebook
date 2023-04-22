<%@ page import="com.DAO.BookDAOimpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>ADD BOOKS</title>
    <%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2">
<%@include file="navbar.jsp"%>
<c:if test="${empty usobj}">
    <c:redirect url="../login.jsp" />
</c:if>
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Edit Books</h4>

                    <%
                    int id = Integer.parseInt(request.getParameter("id"));
                        BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
                        BookDtl b = dao.getBookById(id);
                    %>


                    <form action="/EditBooks" method="post" >
                        <input  type="hidden" name="id" id="id" value="<%=b.getBookid()%>">

                        <div class="form-group">
                            <label for="bname">Book Name</label>
                            <input name="bname" type="text" class="form-control item" id="bname" placeholder="Book Name" value="<%=b.getBookname()%>">
                        </div>
                        <div class="form-group">
                            <label for="aname">Author Name</label>
                            <input name="aname" type="text" class="form-control item" id="aname" placeholder="Author Name" value="<%=b.getAuthor()%>">
                        </div>
                        <div class="form-group">
                            <label for="price">Price</label>
                            <input name="price" type="number" class="form-control item" id="price" placeholder="Price DH" value="<%=b.getPrice()%>">
                        </div>
                        <div class="form-group">
                            <label for="bst">Book Status</label>
                            <select name="bst" class="form-control" id="bst">
                                <%
                                    if("Active".equals(b.getStatus()))
                                    {
                                %>
                                <option value="Active">Active</option>
                                <option value="Inaactive">Inactive</option>

                                <%} else{ %>
                                <option value="Inaactive">Inactive</option>
                                <option value="Active">Active</option>

                                <% } %>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</div>

</body>
</html>
