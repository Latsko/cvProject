package com.example.cvproject.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ExperienceModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String position;
    private String company;
    private String description;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateFrom;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateTo;

}
