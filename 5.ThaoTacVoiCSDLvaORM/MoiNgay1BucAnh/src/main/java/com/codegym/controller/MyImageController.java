package com.codegym.controller;

import com.codegym.model.MyImage;
import com.codegym.service.impl.MyImageServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class MyImageController {

    @Autowired
    public MyImageServiceImpl myImageService;

    @GetMapping("/MyImage")
    public ModelAndView ListComment() {
        List<MyImage> myImageList = myImageService.findAll();
        ModelAndView modelAndView = new ModelAndView("/homePage/index");
        modelAndView.addObject("list", myImageList);
        modelAndView.addObject("myImage",new MyImage());
        return modelAndView;
    }


    @PostMapping("/MyImage")
    public ModelAndView saveComment(@ModelAttribute("MyImage") MyImage myImage) {
        ModelAndView modelAndView = new ModelAndView("/homePage/index");
        myImageService.save(myImage);
        modelAndView.addObject("myImage", new MyImage());
        return modelAndView;

    }

}
