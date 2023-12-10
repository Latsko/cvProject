package com.example.cvproject.config;

import com.example.cvproject.model.SkillModel;
import com.example.cvproject.repository.SkillRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Arrays;

@RequiredArgsConstructor
@Component
public class DataInitializer {
    private final SkillRepository skillRepository;

    @PostConstruct
    public void initSkills() {
        if(!skillRepository.findAll().isEmpty()) {
            skillRepository.deleteAll();
        }
        SkillModel skills = new SkillModel();
        skills.setTitle("PROGRAMING LANGUAGES & TOOLS");
        skills.setSubTitle("WorkFlow");
        skills.setInfo(Arrays.asList("Mobile-First, Responsive Design",
                                     "Cross Browser Testing & Debugging",
                                     "Cross Functional Teams",
                                     "Agile Development & Scrum"));
        skills.setIcons(Arrays.asList("fab fa-html5",
                                      "fab fa-css3-alt",
                                      "fab fa-js-square",
                                      "fab fa-angular",
                                      "fab fa-react",
                                      "fab fa-node-js",
                                      "fab fa-sass",
                                      "fab fa-less",
                                      "fab fa-wordpress",
                                      "fab fa-gulp",
                                      "fab fa-grunt",
                                      "fab fa-npm"));

        skillRepository.save(skills);
    }
}
