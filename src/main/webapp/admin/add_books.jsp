<%--
  Created by IntelliJ IDEA.
  User: OTHMANE
  Date: 03/04/2023
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
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
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Add Books</h4>
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
                    <form action="/BooksAdd" method="post" enctype="multipart/form-data">

                        <div class="form-group">
                            <label for="bname">Book Name</label>
                            <input name="bname" type="text" class="form-control item" id="bname" placeholder="Book Name">
                        </div>
                        <div class="form-group">
                            <label for="aname">Author Name</label>
                            <input name="aname" type="text" class="form-control item" id="aname" placeholder="Author Name">
                        </div>
                        <div class="form-group">
                            <label for="price">Price</label>
                            <input name="price" type="number" class="form-control item" id="price" placeholder="Price DH">
                        </div>
                        <div class="form-group">
                            <label for="bcat">Book Categories</label>
                            <select class="form-control" id="bcat" name="bcat">
                                <option selected>--select--</option>
                                <option value="New">New Book</option>
                            </select>
                        </div>
                        <div class="form-group">
                                <label for="bst">Book Status</label>
                            <select name="bst" class="form-control" id="bst">
                                <option selected>--select--</option>
                                <option value="Active">Active</option>
                                <option value="Inaactive">Inactive</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="uimg">Upload Photo</label>
                            <input id="uimg" name="uimg" type="file" class="form-control-file">
                        </div>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</div>

</body>
</html>
