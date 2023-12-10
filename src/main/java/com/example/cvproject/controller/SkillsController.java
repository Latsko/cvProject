package com.example.cvproject.controller;

import com.example.cvproject.model.SkillModel;
import com.example.cvproject.service.SkillService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/skills")
public class SkillsController {

    private final SkillService skillService;

    @GetMapping
    public String getSkill(Model model) {
        List<SkillModel> skill = skillService.getSkillList();
        model.addAttribute("skillModel", skill);
        return "skills/skills";
    }

    @PostMapping
    public RedirectView addSkill(SkillModel skillModel) {
        skillService.addSkill(skillModel);
        return new RedirectView("/skills");
    }

    @GetMapping("/editSkill/{id}")
    public String getSkill(@PathVariable("id") Long id, Model model) {
        SkillModel skill = skillService.getSkillById(id);
        model.addAttribute("skillModel", skill);
        return "/skills/skills";
    }


    @PostMapping("/del/{id}")
    public RedirectView removeSkill(@PathVariable("id") Long id) {
        skillService.removeSkill(id);
        return new RedirectView("/skills");
    }


    @PostMapping("/{skillId}/addIcon")
    public RedirectView addIconToSkill(@PathVariable Long skillId, @RequestParam String icon) {
        skillService.addIconToSkill(skillId, icon);
        return new RedirectView("/skills");
    }

    @PostMapping("/{skillId}/removeIcon")
    public RedirectView removeIconFromSkill(@PathVariable Long skillId, @RequestParam String icon) {
        skillService.removeIconFromSkill(skillId, icon);
        return new RedirectView("/skills");
    }


    @PostMapping("/{skillId}/addInfo")
    public RedirectView addInfoToSkill(@PathVariable Long skillId, @RequestParam String info) {
        skillService.addInfoToSkill(skillId, info);
        return new RedirectView("/skills");
    }

    @PostMapping("/{skillId}/removeInfo")
    public RedirectView removeInfoFromSkill(@PathVariable Long skillId, @RequestParam String info) {
        skillService.removeInfoFromSkill(skillId, info);
        return new RedirectView("/skills");
    }

}
