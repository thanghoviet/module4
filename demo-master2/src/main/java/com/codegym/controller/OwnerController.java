package com.codegym.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.ws.rs.core.MediaType;

@RestController
@RequestMapping("/owner/{ownerId}")
public class OwnerController {

//    @RequestMapping(value = "/hello" , consumes = MediaType.APPLICATION_JSON)
//    public String hello(){
//        return "Hello World...";
//    }

    @GetMapping("/pets/{petId}")
    public String finePet(@PathVariable Long ownerId,@PathVariable Long petId){
        return "/index";
    }


}
