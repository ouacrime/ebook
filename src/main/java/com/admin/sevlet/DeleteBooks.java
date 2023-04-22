package com.admin.sevlet;

import com.DAO.BookDAOimpl;
import com.DB.DBConnect;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DeleteBooks", value = "/DeleteBooks")
public class DeleteBooks extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            int id = Integer.parseInt(request.getParameter("id"));
            BookDAOimpl daOimpl = new BookDAOimpl(DBConnect.getConn());

            boolean f = daOimpl.deletBooks(id);
            System.out.println(f);
            HttpSession session = request.getSession();

            if(f)
            {
                session.setAttribute("succ","Book Delete Successfully..");
                response.sendRedirect("admin/all_books.jsp");
            }
            else
            {
                session.setAttribute("failed","Something Wrong on server");
                response.sendRedirect("admin/all_books.jsp");
            }


        }catch (Exception e)
        {
            e.printStackTrace();
        }


    }


}
