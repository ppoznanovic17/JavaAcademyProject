package com.petar.university_service.dao;

import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.AssistantSubject;
import com.petar.university_service.model.embeddable.AssistantSubjectPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AssistantSubjectDao extends JpaRepository<AssistantSubject, Integer> {

    List<AssistantSubject> findByAssistantId(int id);
    List<AssistantSubject> findByAssistantName(String name);

    List<AssistantSubject> findBySubjectId(int id);
    List<AssistantSubject> findBySubjectName(String name);

    Optional<AssistantSubject> deleteByAssistantIdAndSubjectId(int assistantId, int subjectId);

    Optional<AssistantSubject> findById(AssistantSubjectPK id);


}
