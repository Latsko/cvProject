package com.example.cvproject.controller;

import com.example.cvproject.model.ExperienceModel;
import com.example.cvproject.service.ExperienceService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping(value = "/experience")
@RequiredArgsConstructor
public class ExperienceController {
    private final ExperienceService experienceService;

    @GetMapping
    public String getExperienceList(Model model){
        List<ExperienceModel> experienceList = experienceService.getExperienceList();
        model.addAttribute("experienceModel", experienceList);
        return "experience/experience";
    }

    @PostMapping
    public RedirectView postAddExperience(ExperienceModel experience) {
        experienceService.addExperience(experience);
        return new RedirectView("/");
    }

    @GetMapping("/editExperience/{id}")
    public String getEditStudent(@PathVariable("id") Long id, Model model) {
        ExperienceModel experience = experienceService.getExperienceById(id);
        model.addAttribute("experienceModel", experience);
        return "/experience/editExperience";
    }

    @PostMapping("/editExperience/{id}")
    public RedirectView postEditExperience(@PathVariable("id") Long id, ExperienceModel experience) {
        experienceService.editExperience(id, experience);
        return new RedirectView("/experience");
    }

    @PostMapping("/delete/{id}")
    public RedirectView postDeleteExperience(@PathVariable("id") Long id) {
        experienceService.deleteExperience(id);
        return new RedirectView("/experience");
    }
}
