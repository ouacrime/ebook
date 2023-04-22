package com.admin.sevlet;

import com.DAO.BookDAOimpl;
import com.DB.DBConnect;
import com.entity.BookDtl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import javax.swing.*;
import java.io.IOException;



@WebServlet(name = "EditBooks", value = "/EditBooks")
public class EditBooks extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try
        {

            int id = Integer.parseInt(request.getParameter("id"));
            String bookname = request.getParameter("bname");
            String author = request.getParameter("aname");
            Double price = Double.parseDouble(request.getParameter("price"));
            String status = request.getParameter("bst");
            System.out.println(id +""+ bookname+""+author+""+price+""+status);

            BookDtl book = new BookDtl();
            book.setBookid(id);
            book.setAuthor(author);
            book.setBookname(bookname);
            book.setPrice(price);
            book.setStatus(status);

            BookDAOimpl DAOI = new BookDAOimpl(DBConnect.getConn());
            boolean updateEditBooksTrue = DAOI.updateEditBooks(book);

            HttpSession session = request.getSession();

            if(updateEditBooksTrue)
            {
                session.setAttribute("succ","Book Update Successfully..");
                response.sendRedirect("admin/all_books.jsp");
            }
            else
            {
                session.setAttribute("failed","Something Wrong on server");
                response.sendRedirect("admin/all_books.jsp");
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }


    }
}
