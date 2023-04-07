<%--
  Created by IntelliJ IDEA.
  User: OTHMANE
  Date: 03/04/2023
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <a href="order_books.jsp">
            <div class="card">
                <div class="card-body text-center text-primary">
                    <i class="fas fa-sign-out-alt fa-3x"></i><br>
                    <h4>Logout</h4>
                    -----------
                </div>
            </div>
            </a>
        </div>
    </div>
</div>


<div style="margin-top: 200px">
<%@include file="footer.jsp"%>
</div>
</body>
</html>
