package com.entity;

public class BookDtl {

    private int bookid;
    private String bookname;
    private String author ;
    private Double price ;
    private String bookCategory ;
    private String  status ;
    private String photoName ;
    private String email;

    public int getBookid() {
        return bookid;
    }

    public void setBookid(int bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getBookCategory() {
        return bookCategory;
    }

    public void setBookCategory(String bookCategory) {
        this.bookCategory = bookCategory;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public BookDtl( String bookname, String author, Double price, String bookCategory, String status, String photoName, String email) {
        super();
        this.bookname = bookname;
        this.author = author;
        this.price = price;
        this.bookCategory = bookCategory;
        this.status = status;
        this.photoName = photoName;
        this.email = email;
    }

    @Override
    public String toString() {
        return "BookDtl{" +
                "bookid=" + bookid +
                ", bookname='" + bookname + '\'' +
                ", author='" + author + '\'' +
                ", price=" + price +
                ", bookCategory='" + bookCategory + '\'' +
                ", status='" + status + '\'' +
                ", photoName='" + photoName + '\'' +
                ", email='" + email + '\'' +
                '}';
    }










}
