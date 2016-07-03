package com.wmusial.controller;

import com.wmusial.dao.BookRepository;
import com.wmusial.dto.BookDto;
import com.wmusial.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
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

    @RequestMapping(value = "/admin/book/create", method = RequestMethod.GET)
    public String getBookCreateView(Model model) {

        model.addAttribute("bookDto", new BookDto());

        return "book-create";
    }

    @RequestMapping(value = "/admin/book/create", method = RequestMethod.POST)
    public String createBook(@ModelAttribute @Valid BookDto book,
                             BindingResult result) {

        if (result.hasErrors()) {
            return "book-create";
        }

        bookRepository.save(new Book(book));

        return "redirect:/books";
    }
}
