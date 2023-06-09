package com.DAO;

import com.entity.BookDtl;
import com.mysql.cj.x.protobuf.MysqlxPrepare;
import java.awt.print.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<BookDtl> getAllBooks() {
        List<BookDtl> listBooks = new ArrayList<BookDtl>();
        BookDtl book =null;
        try
        {
            String sql = "select * from book_details";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                book = new BookDtl();
                book.setBookid(rs.getInt(1));
                book.setBookname(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setPrice(rs.getDouble(4));
                book.setBookCategory(rs.getString(5));
                book.setStatus(rs.getString(6));
                book.setPhotoName(rs.getString(7));
                book.setEmail(rs.getString(8));

                listBooks.add(book);
            }

        }
        catch (Exception e)
        {
            e.printStackTrace();

        }

        return listBooks;
    }

    @Override
    public BookDtl getBookById(int id) {
        BookDtl book = null;
        try{
            String sql = "select * from book_details where bookid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);

            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                book = new BookDtl();
                book.setBookid(rs.getInt(1));
                book.setBookname(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setPrice(rs.getDouble(4));
                book.setBookCategory(rs.getString(5));
                book.setStatus(rs.getString(6));
                book.setPhotoName(rs.getString(7));
                book.setEmail(rs.getString(8));

            }

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }


        return book;
    }

    @Override
    public boolean updateEditBooks(BookDtl book) {
        boolean f = false;
        try
        {
            String sql = "update book_details set bookname=?,author=? ,price=? ,status=? where bookid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,book.getBookname());
            ps.setString(2,book.getAuthor());
            ps.setDouble(3,book.getPrice());
            ps.setString(4,book.getStatus());
            ps.setInt(5,book.getBookid());

            int i = ps.executeUpdate();
            if(i==1)
            {
                f = true;
            }

        }
        catch
        (Exception e)
        {
            e.printStackTrace();
        }


        return f;
    }

    @Override
    public boolean deletBooks(int id) {
        boolean f = false;
        try{
            String sql = "delete from book_details where bookid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            int i = ps.executeUpdate();
            if(i == 1)
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

    @Override
    public List<BookDtl> getNewBook() {
        List<BookDtl> list = new ArrayList<BookDtl>();
        BookDtl book = null;
        try
        {
            String sql = "select * from book_details where bookCategory=? and status=? order by bookid DESC ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,"New");
            ps.setString(2,"Active");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while(rs.next() && i<=4)
            {
                book = new BookDtl();
                book.setBookid(rs.getInt(1));
                book.setBookname(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setPrice(rs.getDouble(4));
                book.setBookCategory(rs.getString(5));
                book.setStatus(rs.getString(6));
                book.setPhotoName(rs.getString(7));
                book.setEmail(rs.getString(8));
                list.add(book);
                i++;
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<BookDtl> getRecentBook() {
        List<BookDtl> list = new ArrayList<BookDtl>();
        BookDtl book = null;
        try
        {
            String sql = "select * from book_details where status=?  order by bookid DESC ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,"Active");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while(rs.next() && i<=4)
            {
                book = new BookDtl();
                book.setBookid(rs.getInt(1));
                book.setBookname(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setPrice(rs.getDouble(4));
                book.setBookCategory(rs.getString(5));
                book.setStatus(rs.getString(6));
                book.setPhotoName(rs.getString(7));
                book.setEmail(rs.getString(8));
                list.add(book);
                i++;
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<BookDtl> getOldBook() {
        List<BookDtl> list = new ArrayList<BookDtl>();
        BookDtl book = null;
        try
        {
            String sql = "select * from book_details where bookCategory=? and status=? order by bookid DESC ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,"Old");
            ps.setString(2,"Active");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while(rs.next() && i<=4)
            {
                book = new BookDtl();
                book.setBookid(rs.getInt(1));
                book.setBookname(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setPrice(rs.getDouble(4));
                book.setBookCategory(rs.getString(5));
                book.setStatus(rs.getString(6));
                book.setPhotoName(rs.getString(7));
                book.setEmail(rs.getString(8));
                list.add(book);
                i++;
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return list;    }

    @Override
    public List<BookDtl> getAllNewBook() {

        List<BookDtl> list = new ArrayList<BookDtl>();
        BookDtl book = null;
        try
        {
            String sql = "select * from book_details where bookCategory=? and status=? order by bookid DESC ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,"New");
            ps.setString(2,"Active");
            ResultSet rs = ps.executeQuery();

            while(rs.next() )
            {
                book = new BookDtl();
                book.setBookid(rs.getInt(1));
                book.setBookname(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setPrice(rs.getDouble(4));
                book.setBookCategory(rs.getString(5));
                book.setStatus(rs.getString(6));
                book.setPhotoName(rs.getString(7));
                book.setEmail(rs.getString(8));
                list.add(book);

            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<BookDtl> getAllRecentBook() {
        List<BookDtl> list = new ArrayList<BookDtl>();
        BookDtl book = null;
        try
        {
            String sql = "select * from book_details where status=?  order by bookid DESC ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,"Active");
            ResultSet rs = ps.executeQuery();

            while(rs.next() )
            {
                book = new BookDtl();
                book.setBookid(rs.getInt(1));
                book.setBookname(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setPrice(rs.getDouble(4));
                book.setBookCategory(rs.getString(5));
                book.setStatus(rs.getString(6));
                book.setPhotoName(rs.getString(7));
                book.setEmail(rs.getString(8));
                list.add(book);

            }

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<BookDtl> getAllOldBook() {
        List<BookDtl> list = new ArrayList<BookDtl>();
        try
        {
            String sql = "select * from book_details where bookCategory=? and status=? order by bookid DESC ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,"Old");
            ps.setString(2,"Active");
            ResultSet rs = ps.executeQuery();
            while(rs.next() )
            {
                BookDtl book = new BookDtl();
                book.setBookid(rs.getInt(1));
                book.setBookname(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setPrice(rs.getDouble(4));
                book.setBookCategory(rs.getString(5));
                book.setStatus(rs.getString(6));
                book.setPhotoName(rs.getString(7));
                book.setEmail(rs.getString(8));
                list.add(book);
            }

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return list;
    }


}
