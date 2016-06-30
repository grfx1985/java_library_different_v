package com.wmusial.controller;

import com.wmusial.dao.BookRepository;
import com.wmusial.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public String getBooksView(Model model) {

        List<Book> books = bookRepository.findAll();

        model.addAttribute("books", books);

        return "books";
    }
}
