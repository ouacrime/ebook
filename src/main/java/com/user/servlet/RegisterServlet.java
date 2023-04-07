package com.user.servlet;

import com.DAO.UserDAOlmpl;
import com.DB.DBConnect;
import com.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try{
        String  email = request.getParameter("email");
        String  fname = request.getParameter("fname");
        String  password = request.getParameter("password");
        String  phone = request.getParameter("phone");
        String  check = request.getParameter("check");

        User us = new User();
        us.setName(fname);
        us.setEmail(email);
        us.setPhon(phone);
        us.setPassword(password);

        HttpSession session = request.getSession();

        if(check != null)
        {
            UserDAOlmpl dao = new UserDAOlmpl(DBConnect.getConn());
            boolean f = dao.userRegister(us);
            if (f)
            {
                session.setAttribute("succ","Registration Successfully..");
                response.sendRedirect("Register.jsp");
                System.out.println("sucees");
            }else {
                session.setAttribute("failed","Registration failed..");
                response.sendRedirect("Register.jsp");
                System.out.println("eroor server");

            }
        }
        else
        {
            session.setAttribute("failed","cheack terms & condition..");
            response.sendRedirect("Register.jsp");
            System.out.println("error check");

        }

    }catch (Exception e)
    {
        e.printStackTrace();
    }



    }
}
