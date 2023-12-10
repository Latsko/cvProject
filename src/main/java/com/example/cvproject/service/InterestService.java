package com.example.cvproject.service;

import com.example.cvproject.model.InterestModel;
import com.example.cvproject.repository.InterestRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class InterestService {

    private final InterestRepository interestRepository;

    public List<InterestModel> getInterestList() {
        return interestRepository.findAll();
    }

    public void addInterest(InterestModel interestModel) {
        interestRepository.save(interestModel);
    }


    public InterestModel getInterestById(Long id) {
        return interestRepository.findById(id).orElse(null);
    }


    public void saveEditInterest(InterestModel interestModel) {
        interestRepository.save(interestModel);
    }

    public void removeInterest(Long id) {
        interestRepository.deleteById(id);
    }


}
