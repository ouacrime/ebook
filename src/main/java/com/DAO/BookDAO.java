package com.DAO;

import com.entity.BookDtl;

import java.util.List;

public interface BookDAO {
    public boolean addBooks(BookDtl b);
    public List<BookDtl> getAllBooks();
    public BookDtl getBookById(int id);
    public boolean updateEditBooks(BookDtl book);
    public boolean deletBooks(int id);
    public List<BookDtl> getNewBook();
    public List<BookDtl> getRecentBook();
    public List<BookDtl> getOldBook();
    public List<BookDtl> getAllNewBook();
    public List<BookDtl> getAllRecentBook();
    public List<BookDtl> getAllOldBook();







}
