package com.codegym.controler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Home {
    @GetMapping("/home")
    public String greeting(@RequestParam(value = "name",defaultValue = "") String name, Model modle){
        modle.addAttribute("name", name);
        return "file";
    }
}
