package com.example.cvproject.service;

import com.example.cvproject.model.EducationModel;
import com.example.cvproject.repository.EducationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class EducationService {

    private final EducationRepository educationRepository;


    public List<EducationModel> getEducationList() {
        return educationRepository.findAll();
    }

    public void addEducation(EducationModel educationModel) {
        educationRepository.save(educationModel);
    }


    public EducationModel getEducationById(Long id) {
        return educationRepository.findById(id).orElse(null);
    }

    public void removeEducation(Long id) {
        educationRepository.deleteById(id);
    }

    public void editEducation(Long id, EducationModel education) {
        educationRepository.deleteById(id);
        education.setId(id);
        educationRepository.save(education);
    }
}
