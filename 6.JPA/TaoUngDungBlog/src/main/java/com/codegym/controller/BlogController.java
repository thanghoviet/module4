package com.codegym.controller;

import com.codegym.repository.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BlogController {

    @Autowired
    private BlogRepository blogRepository;

    @GetMapping
    public String home() {
        blogRepository.
    }
}
