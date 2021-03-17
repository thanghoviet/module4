package com.codegym.controller;

import com.codegym.model.Mailboxes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mailboxes")
public class EmailController {
@RequestMapping(value = "/showMailboxes",method = RequestMethod.GET)
    public String ShowMailboxes(ModelMap model){
model.addAttribute("mailboxes",new Mailboxes());
return "showForm";
}

@RequestMapping(value = "/mailboxes",method = RequestMethod.POST)
    public String Email(@ModelAttribute("mailboxes") Mailboxes mailboxes,ModelMap model){
model.addAttribute("languages",mailboxes.getLanguages());
model.addAttribute("size",mailboxes.getSize());
model.addAttribute("spamsFilter",mailboxes.isSpamsFilter());
model.addAttribute("signature",mailboxes.getSignature());
return "info";
}
}
