package com.admin.sevlet;

import com.DAO.BookDAOimpl;
import com.DB.DBConnect;
import com.entity.BookDtl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.ExecutionException;

@WebServlet(name = "BooksAdd", value = "/BooksAdd")
@MultipartConfig

public class BooksAdd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String bookname = request.getParameter("bname");
            String author = request.getParameter("aname");
            Double price = Double.parseDouble(request.getParameter("price"));
            String categorie = request.getParameter("bcat");
            String status = request.getParameter("bst");
            Part part = request.getPart("uimg");
            String filename = part.getSubmittedFileName();

            BookDtl b = new BookDtl(bookname, author, price, categorie, status, filename, "admin");
            System.out.println(b);
            BookDAOimpl bookdaoimpl = new BookDAOimpl(DBConnect.getConn());


            boolean f = bookdaoimpl.addBooks(b);
            HttpSession session = request.getSession();

            if (f) {
                String path = getServletContext().getRealPath("") + "book";
                File file = new File(path);
                part.write(path + File.separator + filename);

                session.setAttribute("succ", "BookAdd Sucessfully");
                response.sendRedirect("admin/add_books.jsp");
            } else {
                session.setAttribute("failed", "something worng in server");
                response.sendRedirect("admin/add_books.jsp");
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}