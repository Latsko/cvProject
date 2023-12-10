package com.example.cvproject.controller;

import com.example.cvproject.model.EducationModel;
import com.example.cvproject.model.ExperienceModel;
import com.example.cvproject.service.EducationService;
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
@RequestMapping(value = "/education")
public class EducationController {
    private final EducationService educationService;

    @GetMapping
    public String getEducation(Model model) {
        List<EducationModel> education = educationService.getEducationList();
        model.addAttribute("educationModel", education);
        return "education/education";
    }

    @PostMapping
    public RedirectView addEducation(EducationModel educationModel) {
        educationService.addEducation(educationModel);
        return new RedirectView("/education");
    }

    @GetMapping("/editEducation/{id}")
    public String getEditEducation(@PathVariable("id") Long id, Model model) {
        EducationModel education = educationService.getEducationById(id);
        model.addAttribute("educationModel", education);
        return "education/editEducation";
    }

    @PostMapping("/editEducation/{id}")
    public RedirectView postEditExperience(@PathVariable("id") Long id, EducationModel education) {
        educationService.editEducation(id, education);
        return new RedirectView("/education");
    }

    @PostMapping("/delete/{id}")
    public RedirectView removeEducation(@PathVariable("id") Long id) {
        educationService.removeEducation(id);
        return new RedirectView("/education");
    }
}
