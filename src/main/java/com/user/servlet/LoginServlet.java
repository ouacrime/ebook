package com.user.servlet;

import com.DAO.UserDAOlmpl;
import com.DB.DBConnect;
import com.entity.User;
import jakarta.jws.soap.SOAPBinding;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User us = null;
        try {
            UserDAOlmpl dao = new UserDAOlmpl(DBConnect.getConn());
            HttpSession session = request.getSession();

            String email = request.getParameter("email");
            String password = request.getParameter("password");



            if (email.equals("othmaneouacrim@gmail.com") && password.equals("aaaa") ) {
                us = new User();
                us.setName("Admin");
                session.setAttribute("usobj",us);
                response.sendRedirect("admin/home.jsp");
            }
            else
            {
                 us = dao.login(email,password);
                if(us !=null)
                {
                    session.setAttribute("usobj",us);
                    response.sendRedirect("home.jsp");
                }
                else
                {
                    session.setAttribute("failed","Email & message invalid");
                    response.sendRedirect("login.jsp");
                }

            }

        }catch (Exception e)
        {

        }


    }
}
