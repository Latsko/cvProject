package com.example.cvproject.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class InterestModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "description", length = 800)
    private String description;

}