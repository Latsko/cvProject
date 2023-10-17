package com.example.cvproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/interests")
public class InterestsController {

    @GetMapping
    public String getInterests(){
        return "interests/interests";
    }
}
