package com.DAO;

import com.entity.BookDtl;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BookDAOimpl implements BookDAO {

    private Connection conn = null;

    public BookDAOimpl(Connection conn)
    {
        super();
        this.conn = conn;
    }
    @Override
    public boolean addBooks(BookDtl b) {
        boolean f = false;
        try {
            String sql = "insert into book_details( bookname , author, price, bookCategory, status , photoname,email) values(?,?,?,?,?,?,?)";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,b.getBookname());
            ps.setString(2,b.getAuthor());
            ps.setString(3,b.getPrice().toString());
            ps.setString(4,b.getBookCategory());
            ps.setString(5,b.getStatus());
            ps.setString(6,b.getPhotoName());
            ps.setString(7,b.getEmail());

            int i = ps.executeUpdate();
            if(i==1)
            {
                f = true;
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }


        return f;
    }
}
