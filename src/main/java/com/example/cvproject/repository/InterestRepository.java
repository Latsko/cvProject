package com.example.cvproject.repository;

import com.example.cvproject.model.InterestModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface InterestRepository extends JpaRepository<InterestModel, Long> {
}
