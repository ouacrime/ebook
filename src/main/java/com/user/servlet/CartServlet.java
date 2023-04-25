package com.user.servlet;

import com.DAO.BookDAOimpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtl;
import com.entity.Cart;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "cart", value = "/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            int bid = Integer.parseInt(request.getParameter("bid"));
            int uid = Integer.parseInt(request.getParameter("uid"));

            BookDAOimpl daOimpl = new BookDAOimpl(DBConnect.getConn());
            BookDtl b = daOimpl.getBookById(bid);

            Cart c = new Cart();
            c.setBid(bid);
            c.setUserId(uid);
            c.setBookName(b.getBookname());
            c.setAuthor(b.getAuthor());
            c.setPrice(b.getPrice());
            c.setTotalPrice(b.getPrice());

            CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
            boolean f = dao.addCart(c);

            if (f)
            {
                System.out.println("Add cart Sucess");
            }else
            {
                System.out.println("Error");
            }


        }
        catch(Exception e)
        {
            e.printStackTrace();
        }



    }

}
