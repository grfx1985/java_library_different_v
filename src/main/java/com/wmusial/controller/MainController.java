package com.wmusial.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getMainView() {

        return "main";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLoginView() {

        return "login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String getRegisterView() {

        return "register";
    }

    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public String getBooksView() {

        return "books";
    }

    @RequestMapping(value = "/user/create", method = RequestMethod.GET)
    public String getCreateUserView() {

        return "user-create";
    }

}
