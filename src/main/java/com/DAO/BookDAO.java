package com.DAO;

import com.entity.BookDtl;

import java.util.List;

public interface BookDAO {
    public boolean addBooks(BookDtl b);
    public List<BookDtl> getAllBooks();

}
