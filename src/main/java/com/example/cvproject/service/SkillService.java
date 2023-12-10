package com.example.cvproject.service;

import com.example.cvproject.model.SkillModel;
import com.example.cvproject.repository.SkillRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.List;

@Service
@RequiredArgsConstructor
public class SkillService {

    private final SkillRepository skillRepository;


    public List<SkillModel> getSkillList() {
        return skillRepository.findAll();
    }

    public void addSkill(SkillModel skillModel) {
        skillRepository.save(skillModel);
    }


    public SkillModel getSkillById(Long id) {
        return skillRepository.findById(id).orElse(null);
    }


    public void saveEditSkill(SkillModel skillModel) {
        skillRepository.save(skillModel);
    }

    public void removeSkill(Long id) {
        skillRepository.deleteById(id);
    }

    public void addIconToSkill(Long skillId, String icon) {
        SkillModel skill = skillRepository.findById(skillId)
                .orElseThrow(() -> new EntityNotFoundException("Skill not found"));
        skill.getIcons().add(icon);
        skillRepository.save(skill);
    }

    public void removeIconFromSkill(Long skillId, String icon) {
        SkillModel skill = skillRepository.findById(skillId)
                .orElseThrow(() -> new EntityNotFoundException("Skill not found"));
        skill.getIcons().remove(icon);
        skillRepository.save(skill);
    }


    public void addInfoToSkill(Long skillId, String info) {
        SkillModel skill = skillRepository.findById(skillId)
                .orElseThrow(() -> new EntityNotFoundException("Skill not found"));
        skill.getInfo().add(info);
        skillRepository.save(skill);
    }

    public void removeInfoFromSkill(Long skillId, String info) {
        SkillModel skill = skillRepository.findById(skillId)
                .orElseThrow(() -> new EntityNotFoundException("Skill not found"));
        skill.getInfo().remove(info);
        skillRepository.save(skill);
    }

}
