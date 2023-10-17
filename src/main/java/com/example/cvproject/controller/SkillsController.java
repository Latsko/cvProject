package com.example.cvproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/skills")
public class SkillsController {

    @GetMapping
    public String getSkills(){
        return "skills/skills";
    }
}
