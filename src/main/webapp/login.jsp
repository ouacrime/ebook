<%--
  Created by IntelliJ IDEA.
  User: OTHMANE
  Date: 02/04/2023
  Time: 02:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
    <%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>

<div class="container">
    <div class="row mt-2">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Login</h4>

                    <c:if test="${not empty failed}">
                        <h3 class="text-center text-danger">${failed}</h3>
                        <c:remove var="failed" scope="session"></c:remove>
                    </c:if>
                    <form action="login" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input name="password" type="password" class="form-control" id="exampleInputPassword1" required placeholder="Password">
                        </div>


                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <br>
                            <a href="Register.jsp">Create Account</a>
                        </div>


                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="all_component/footer.jsp"%>
</body>
</html>
