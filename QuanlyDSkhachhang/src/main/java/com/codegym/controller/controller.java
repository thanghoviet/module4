package com.codegym.controller;

import com.codegym.model.Customer;
import com.codegym.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class controller {

    CustomerService customerService ;

    @Autowired
    public void setCustomerService(CustomerService customerServices) {
        this.customerService = customerServices;
    }

    @GetMapping("/customers")
    public String showList(Model model) {
        model.addAttribute("list",customerService.getAll());
        return "dskh";
    }
    @GetMapping("/update")
    public String showUpdate(@RequestParam(value = "id", defaultValue = "0") int id, Model model) {
        model.addAttribute("update", customerService.getById(id));
        return "update";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("update")Customer customer) {
        boolean result = customerService.update(customer);
        if (result){
            return "redirect:/customers";
        }else {
            return "update";
        }
    }

    @GetMapping("/add")
    public String showAdd(@ModelAttribute("add") Customer customer){
        return "add";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("add") Customer customer){
        this.customerService.add(customer);
        return "redirect: /add";
    }

}
