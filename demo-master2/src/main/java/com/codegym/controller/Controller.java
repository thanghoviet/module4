package com.codegym.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@org.springframework.stereotype.Controller
public class Controller {
//    @GetMapping("/hello")
//    public String hello(@RequestParam(value = "name",defaultValue = "") String name, Model model){
//        model.addAttribute("thang",name);
//        return "hello";
//    }

//    @GetMapping("/hello/{name}")
//    public String hello2(@PathVariable Optional<Integer>  name, Model model){
//        if (name.isPresent() ){
//            model.addAttribute("thang",name.get());
//            return "hello";
//        }else {
//            model.addAttribute("thang", 0);
//            return "hello";
//        }
//
//    }

}
