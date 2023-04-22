<%--
  Created by IntelliJ IDEA.
  User: OTHMANE
  Date: 03/04/2023
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Admine</title>
    <%@include file="allCss.jsp"%>
    <style >
        a{
            text-decoration: none;
            color: black;
        }
        a:hover{
            text-decoration: none;
            color: black;
        }

    </style>


</head>
<body>
<%@include file="navbar.jsp"%>
<c:if test="${empty usobj}">
    <c:redirect url="../login.jsp" />
</c:if>

<h1 class="text-center">Admin:Home</h1>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <a href="add_books.jsp">
            <div class="card">
                <div class="card-body text-center text-primary">
                    <i class="fas fa-plus-square fa-3x"></i><br>
                    <h4>Add Books</h4>
                    -----------
                </div>
            </div>
            </a>
        </div>

        <div class="col-md-3">
            <a href="all_books.jsp">
            <div class="card">
                <div class="card-body text-center text-danger">
                    <i class="fas fa-book-open fa-3x"></i><br>
                    <h4>All Books</h4>
                    -----------
                </div>
            </div>
            </a>
        </div>

        <div class="col-md-3">
            <a href="order_books.jsp">
            <div class="card">
                <div class="card-body text-center text-warning">
                    <i class="fas fa-box-open fa-3x"></i><br>
                    <h4>Order</h4>
                    -----------
                </div>
            </div>
            </a>
        </div>

        <div class="col-md-3">
            <a data-toggle="modal" data-target="#exampleModalCenter">
            <div class="card">
                <div class="card-body text-center text-primary">
                    <i class="fas fa-sign-out-alt fa-3x"></i><br>
                    <h4>Logout</h4>
                    -----------
                </div>
            </a>
            </div>
            </a>
        </div>
    </div>
</div>
<!-- logout modal -->

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center">
                    <h4> Do You Want logout </h4>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
                </div>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>

<!-- end logotu modal -->


<div style="margin-top: 200px">
<%@include file="footer.jsp"%>
</div>
</body>
</html>
