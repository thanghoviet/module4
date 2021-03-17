package com.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
    @RequestMapping("/car?/s?o?/infor1")
    public String infor1(Model model){
        model.addAttribute("message","Infor1");
        return "/infor1";
    }
//
    @RequestMapping("/c*/s*/infor2")
    public String infor2(Model model){
        model.addAttribute("message","Infor2");
        return "infor2";
    }
    @RequestMapping("/card/**")
    public String infor3(Model model){
        model.addAttribute("message","Infor3");
        return "infor3";
    }
}