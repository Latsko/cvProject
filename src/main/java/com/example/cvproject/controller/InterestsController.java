package com.example.cvproject.controller;

import com.example.cvproject.model.InterestModel;
import com.example.cvproject.service.InterestService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/interests")
public class InterestsController {

    private final InterestService interestService;


    @GetMapping
    public String getInterests(Model model) {
        List<InterestModel> interest = interestService.getInterestList();
        model.addAttribute("interestModel", interest);
        return "interests/interests";
    }

    @PostMapping
    public RedirectView addInterest(InterestModel interestModel) {
        interestService.addInterest(interestModel);
        return new RedirectView("/interests");
    }

    @GetMapping("/editInterest/{id}")
    public String getInterest(@PathVariable("id") Long id, Model model) {
        InterestModel interest = interestService.getInterestById(id);
        model.addAttribute("interestModel", interest);
        return "interests/interests";
    }

    @PostMapping("/del/{id}")
    public RedirectView removeInterest(@PathVariable("id") Long id) {
        interestService.removeInterest(id);
        return new RedirectView("/interests");
    }
}