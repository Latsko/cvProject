package com.example.cvproject.model;

import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
public class EducationModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title")
    private String title;

    @Column(name = "sub_title")
    private String subTitle;

    @Column(name = "description", length = 800)
    private String description;


    @Column(name = "date_from")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateFrom;


    @Column(name = "date_to")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateTo;
}
