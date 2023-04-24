<%@ page import="com.DAO.BookDAOimpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtl" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ebook: Index</title>
    <%@include file="all_component/allCss.jsp"  %>
    <style type="text/css">
        .back-img{
            background: url("img/jaredd-craig-HH4WBGNyltc-unsplash.jpg");
            height:50vh;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat ;
        }
        .crd-ho{
            background-color: #fcf7f7;
        }
    </style>

</head>
<body style="background-color: #f7f7f7">
    <%@include file="all_component/navbar.jsp"%>
    <div class="container-fluid back-img" >
        <h2 class="text-center text-danger">Ebook Management System</h2>
    </div>
        <hr>


    <!-- Start New Book-->
    <div class="container" >

        <h3 class="text-center">New Book</h3>

        <div class="row mb-1">

                <%
                    BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
                    List<BookDtl> list = dao.getNewBook();
                    for(BookDtl b : list)
                    {
                %>
                    <div class="col-md-3">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px;" class="img-thumblin">
                                <p><%=b.getBookname()%></p>
                                <p><%=b.getAuthor()%></p>
                                <p>Categories:<%=b.getBookCategory()%></p>
                                <div class="row ">
                                    <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a>
                                    <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                                </div>
                            </div>
                        </div>
                    </div>

            <%
                    }
                %>

        </div>

        <div class="text-center">
            <a href="all_new_book.jsp" class="btn btn-danger btn-sm">View All</a>
        </div>

    </div>
    <!--End New book-->

    <hr>
    <!-- Start Recent Book-->
    <div class="container" >
        <h3 class="text-center">Recent Book</h3>
        <div class="row mb-1">

            <%
                BookDAOimpl dao1 = new BookDAOimpl(DBConnect.getConn());
                List<BookDtl> list1 = dao1.getRecentBook();
                for(BookDtl b1 : list1)
                {
            %>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b1.getPhotoName()%>" style="width: 150px; height: 200px;" class="img-thumblin">
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
                            <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a>
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

        <div class="text-center">
            <a href="all_recent_book.jsp" class="btn btn-danger btn-sm">View All</a>
        </div>

    </div>
    <!--End Recent book-->

    <hr>

    <!-- Old Book-->
    <div class="container" >
        <h3 class="text-center">Old Book</h3>
        <div class="row mb-1">

            <%
                BookDAOimpl dao2 = new BookDAOimpl(DBConnect.getConn());
                List<BookDtl> list2 = dao2.getOldBook();
                for(BookDtl b2 : list2)
                {
            %>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b2.getPhotoName() %>" style="width: 150px; height: 200px;" class="img-thumblin">
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




        </div>

        <div class="text-center">
            <a href="all_old_book.jsp" class="btn btn-danger btn-sm">View All</a>
        </div>

    </div>
    <!--End Old book-->


<%@include file="all_component/footer.jsp" %>


</body>
</html>
