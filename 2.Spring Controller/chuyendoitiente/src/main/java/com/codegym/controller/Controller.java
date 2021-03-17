package com.codegym.controller;

import com.codegym.model.Money;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@org.springframework.stereotype.Controller
public class Controller {
        @GetMapping("/money")
        public String formConvert(@ModelAttribute("money") Money money) {
            return "money";
        }

        @PostMapping("/money")
        public String convert(@ModelAttribute("money") Money money) {
            float total = money.getUSD() * money.getVND();
            money.setTotal(total);
            return "USD";

    }
}
