package com.codegym.controler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class show {
@GetMapping("/hello")
    public String Hello(){
    return "hello";
}
}
