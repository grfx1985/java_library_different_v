package com.wmusial.controller;

import com.wmusial.model.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BookController {


    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public String getBooksView(Model model) {

        List<Book> books = new ArrayList<>();
        books.add(new Book("aa", "BB"));
        books.add(new Book("aa1", "BB5"));
        books.add(new Book("aa2", "BB3"));

        model.addAttribute("books", books);

        return "books";
    }
}
