package com.wmusial.dto;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

public class BookDto {

    private Long id;

    @NotNull
    @Length(message = "custom message: 3-255 length", min = 3, max = 255)
    private String author;

    @NotNull
    @Length(min = 1, max = 255)
    private String title;

    @NotNull
    @Digits(integer = 5, fraction = 0)
    @Min(0)
    private Integer quantity;

    public BookDto() {
    }

    public BookDto(Long id, String author, String title, Integer quantity) {
        this.id = id;
        this.author = author;
        this.title = title;
        this.quantity = quantity;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}
