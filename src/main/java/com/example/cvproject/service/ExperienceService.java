package com.example.cvproject.service;

import com.example.cvproject.model.ExperienceModel;
import com.example.cvproject.repository.ExperienceRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ExperienceService {
    private final ExperienceRepository experienceRepository;

    public void addExperience(ExperienceModel experience) {
        experienceRepository.save(experience);
    }

    public List<ExperienceModel> getExperienceList() {
        return experienceRepository.findAll();
    }

    public ExperienceModel getExperienceById(Long id) {
        return experienceRepository.findById(id).orElse(null);
    }

    public void editExperience(Long id, ExperienceModel experience) {
        experienceRepository.deleteById(id);
        experience.setId(id);
        experienceRepository.save(experience);
    }

    public void deleteExperience(Long id) {
        experienceRepository.deleteById(id);
    }
}
