<%@ page import="com.DAO.BookDAOimpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtl" %>
<%@ page import="com.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>New Book</title>
    <%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>
<%User u = (User) session.getAttribute("usobj");%>

<div class="container" >
        <h3 class="text-center">Recent Book</h3>
        <div class="row mb-1">

            <%
                BookDAOimpl dao1 = new BookDAOimpl(DBConnect.getConn());
                List<BookDtl> list1 = dao1.getAllRecentBook();
                for(BookDtl b1 : list1)
                {
            %>
            <div class="col-md-3">
                <div class="card crd-ho mt-2">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b1.getPhotoName()%>" style="width: 100px; height: 150px;" class="img-thumblin">
                        <p><%=b1.getBookname()%></p>
                        <p><%=b1.getAuthor()%></p>
                        <p>Categories:<%=b1.getBookCategory()%></p>
                        <%
                            if(b1.getBookCategory().equals("Old"))
                            {%>
                        <div class="row ">
                            <a href="" class="btn btn-success btn-sm ml-4">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b1.getPrice()%></a>
                        </div>
                        <%}else
                        {
                        %>
                        <div class="row ">
                            <%
                                if(u == null){
                            %>
                            <a href="login.jsp" class="btn btn-primary "><i class="fas fa-cart-plus"></i>Add Cart</a>
                            <%
                            }else{
                            %>
                            <a href="cart?bid=<%=b1.getBookid()%>&&uid=<%=u.getId()%>" class="btn btn-primary "><i class="fas fa-cart-plus"></i>Add Cart</a>
                            <%
                                }
                            %>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b1.getPrice()%> </a>
                        </div>
                        <%
                            }
                        %>

                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>

    </div>


</div>


<%@include file="all_component/footer.jsp" %>
</body>
</html>