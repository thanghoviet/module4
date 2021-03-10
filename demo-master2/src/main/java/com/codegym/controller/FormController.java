package com.codegym.controller;

import com.codegym.model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class FormController {
    @GetMapping("/addCustomer")
    public String add(Model model) {
        Customer customer = new Customer();
        model.addAttribute("cus",customer);
        return "add";
    }
    @PostMapping("/doadd")
    public String doadd(@ModelAttribute Customer customer, ModelMap modelMap){
        modelMap.addAttribute("thang",customer);
        return "hello";
    }
}
