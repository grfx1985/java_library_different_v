package com.wmusial.model;

import com.wmusial.dto.BookDto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "book")
public class Book extends BaseEntity {

    @Column(name = "author")
    private String author;

    @Column(name = "title")
    private String title;

    @Column(name = "quantity")
    private Integer quantity;

    @OneToMany(mappedBy = "book", fetch = FetchType.LAZY)
    private List<Rent> rents;

    public Book() {
    }

    public Book(String author, String title) {
        this.author = author;
        this.title = title;
    }

    public Book(BookDto book) {
        this.id = book.getId();
        this.author = book.getAuthor();
        this.title = book.getTitle();
        this.quantity = book.getQuantity();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<Rent> getRents() {
        return rents;
    }

    public void setRents(List<Rent> rents) {
        this.rents = rents;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}
