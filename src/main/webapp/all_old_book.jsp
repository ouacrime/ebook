<%@ page import="com.DAO.BookDAOimpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtl" %>
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
    <div class="container" >
        <h3 class="text-center">Old Book</h3>
        <div class="row mb-1">

            <%
                BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
                List<BookDtl> list = dao.getAllOldBook();
                for(BookDtl b2 : list)
                {
            %>
            <div class="col-md-3">
                <div class="card crd-ho mt-2">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b2.getPhotoName() %>" style="width: 100px; height: 150px;" class="img-thumblin">
                        <p><%=b2.getBookname()%></p>
                        <p><%=b2.getAuthor()%></p>
                        <p>Categories:<%=b2.getBookCategory()%></p>
                        <div class="row ">
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><%=b2.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>


<%@include file="all_component/footer.jsp" %>
</body>
</html>
