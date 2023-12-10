package com.example.cvproject.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class SkillModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title")
    private String title;

    @Column(name = "sub_title")
    private String subTitle;

    @ElementCollection
    @CollectionTable(name = "skill_info", joinColumns = @JoinColumn(name = "skill_id"))
    @Column(name = "info")
    private List<String> info;

    @ElementCollection
    @CollectionTable(name = "skill_icons", joinColumns = @JoinColumn(name = "skill_id"))
    @Column(name = "icon")
    private List<String> icons;
}