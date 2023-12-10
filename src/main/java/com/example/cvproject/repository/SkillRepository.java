package com.example.cvproject.repository;

import com.example.cvproject.model.SkillModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SkillRepository extends JpaRepository<SkillModel, Long> {
}
