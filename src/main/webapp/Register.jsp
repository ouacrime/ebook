<%--
  Created by IntelliJ IDEA.
  User: OTHMANE
  Date: 02/04/2023
  Time: 02:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
    <%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="all_component/navbar.jsp"%>

    <div class="container">
        <div class="row mt-2">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Regitration </h4>
                        <c:if test="${not empty succ}">
                            <p class="text-center text-success">${succ}</p>
                            <c:remove var="succ" scope="session"></c:remove>
                        </c:if>
                        <c:if test="${not empty failed}">
                            <p class="text-center text-success">${failed}</p>
                            <c:remove var="failed" scope="session"></c:remove>
                        </c:if>


                        <form action="/RegisterServlet" method="post">
                            <div class="form-group">
                                <label for="fullname">Enter Full Name</label>
                                <input name="fname" required type="text" class="form-control" id="fullname" aria-describedby="emailHelp" placeholder="Full Name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone Number </label>
                                <input name="phone" required type="number" class="form-control" id="phone" aria-describedby="emailHelp" placeholder="Phone ">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <div class="form-check">
                                <input name="check"
                                       type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <button  type="submit" class="btn btn-primary">Submit</button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

<%@include file="all_component/footer.jsp"%>

</body>
</html>
