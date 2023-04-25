<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.DAO.BookDAOimpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtl" %>
<%@ page import="com.entity.User" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details Books</title>
    <%@include file="all_component/allCss.jsp"  %>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_component/navbar.jsp"%>
<%User u = (User) session.getAttribute("usobj");%>


    <%
        int bid = Integer.parseInt(request.getParameter("bid"));
        BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
        BookDtl b = dao.getBookById(bid);

    %>

    <div class="container p-3">
        <div class="row">
            <div class="col-md-6 text-center p-5 border bg-white">
                <img src="book/<%=b.getPhotoName()%>" style="height: 150px; width: 100px"><br>
                <h4 class="mt-3">Book Name: <span class="text-success"><%=b.getBookname()%></span></h4>
                <h4>Author Name: <span class="text-success"><%=b.getAuthor()%></span></h4>
                <h4>Category: <span class="text-success"><%=b.getBookCategory()%></span></h4>
            </div>

            <div class="col-md-6 text-center p-5 border bg-white">
                <h2><%=b.getBookname()%></h2>

                <%if("Old".equals(b.getBookCategory()))
                {%>
                    <h5 class="text-primary">Selle</h5>
                    <h5 class="text-primary"><i class="far fa-envelope"></i> Email: <%=b.getEmail()%></h5>
                <%}
                %>

                <div class="row">
                    <div class="col-md-4 text-center p-2 text-danger">
                        <i class="fas fa-money-bill-wave fa-3x"></i>
                        <p>Cash On Delivery</p>
                    </div>
                    <div class="col-md-4 text-center p-2 text-danger">
                        <i class="fas fa-undo-alt fa-3x"></i>
                        <p>Return Avaliable</p>
                    </div>
                    <div class="col-md-4 text-center p-2 text-danger">
                        <i class="fas fa-truck-moving fa-3x"></i>
                        <p>Free Shipping</p>
                    </div>
                </div>
                <%
                if("Old".equals(b.getBookCategory())){
                %>
                <div class="text-center p-3">
                    <a href="index.jsp" class="btn btn-success"><i class="fas fa-cart-plus"></i>Continue Shoppin</a>
                    <a href="" class="btn btn-danger"><i class="fas fa-ruppee-sign"></i> 200</a>
                </div>
                <%
                    }else {
                %>
                <div class="text-center p-3">
                    <%
                        if(u == null){
                    %>
                    <a href="login.jsp" class="btn btn-primary "><i class="fas fa-cart-plus"></i>Add Cart</a>
                    <%
                    }else{
                    %>
                    <a href="cart?bid=<%=b.getBookid()%>&&uid=<%=u.getId()%>" class="btn btn-primary "><i class="fas fa-cart-plus"></i>Add Cart</a>
                    <%
                        }
                    %>
                    <a href="" class="btn btn-danger"><i class="fas fa-ruppee-sign"></i> 200</a>
                </div>
                <%
                    }
                %>


            </div>


        </div>



    </div>



</body>
</html>
