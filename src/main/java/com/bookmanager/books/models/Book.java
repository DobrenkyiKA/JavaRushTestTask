package com.bookmanager.books.models;

import javax.persistence.*;

@Entity
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String title;

    private String description;

    private String author;

    private String isbn;
    @Column(name = "printyear")
    private int printyear;
    @Column(name = "readalready")
    private boolean readalready;

  //  private String imageStr;

  //  @Lob
   // @Column(name="image_data")
  //  private byte[] imageData;

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public int getPrintyear() {
        return printyear;
    }

    public void setPrintyear(int printyear) {
        this.printyear = printyear;
    }

    public boolean isReadalready() {
        return readalready;
    }

    public void setReadalready(boolean readalready) {
        this.readalready = readalready;
    }

//    public String getImageStr() {
//        return imageStr;
//    }
//
//    public void setImageStr(String imageStr) {
//        this.imageStr = imageStr;
//    }
//
//    public byte[] getImageData() {
//        return imageData;
//    }
//
//    public void setImageData(byte[] imageData) {
//        this.imageData = imageData;
//    }
}
