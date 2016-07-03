package com.wmusial.controller;

import com.wmusial.dao.BookRepository;
import com.wmusial.dao.RentRepository;
import com.wmusial.dao.UserRepository;
import com.wmusial.model.Book;
import com.wmusial.model.Rent;
import com.wmusial.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RentController {

    @Autowired
    RentRepository rentRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    BookRepository bookRepository;


    @RequestMapping(value = "/rents", method = RequestMethod.GET)
    public String getRentsView(Model model) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String email = authentication.getName();

        User user = userRepository.findByEmail(email);

        if (user.isAdmin()) {
            Sort sort = new Sort(Sort.Direction.DESC, "createdDate");
            model.addAttribute("rents", rentRepository.findAll(sort));
        } else {
            model.addAttribute("rents", rentRepository.findByUserOrderByCreatedDateDesc(user));
        }

        return "rents";
    }

    @RequestMapping(value = "/rent/book", method = RequestMethod.POST)
    public String rentBook(@RequestParam Long bookId) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String email = authentication.getName();
        User user = userRepository.findByEmail(email);
        Book book = bookRepository.findOne(bookId);

        if (book.getQuantity() > 0) {
            book.setQuantity(book.getQuantity() - 1);
            bookRepository.save(book);
            Rent rent = new Rent(user, book);
            rentRepository.save(rent);
        }
        return "redirect:/rents";
    }

    @RequestMapping(value = "/rent/finish", method = RequestMethod.POST)
    public String finishRent(@RequestParam Long rentId) {
        Rent rent = rentRepository.findOne(rentId);
        rent.setStatus(Rent.Status.FINISHED);
        rentRepository.save(rent);
        return "redirect:/rents";
    }
}
