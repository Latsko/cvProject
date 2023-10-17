package com.example.cvproject.repository;

import com.example.cvproject.model.ExperienceModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExperienceRepository extends JpaRepository<ExperienceModel, Long> {

}
