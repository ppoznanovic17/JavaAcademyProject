package com.petar.university_service.model;

import com.petar.university_service.model.embeddable.AssistantSubjectPK;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class AssistantSubject implements Serializable {

    @EmbeddedId
    private AssistantSubjectPK id;

    @ManyToOne
    @MapsId("assistantId")
    @JoinColumn(name = "assistant_id")
    private Assistant assistant;

    @ManyToOne
    @MapsId("subjectId")
    @JoinColumn(name = "subject_id")
    private Subject subject;

    @Override
    public String toString() {
        return "AssistantSubject{" +
                "id=" + id +
                ", assistant=" + assistant +
                ", subject=" + subject +
                '}';
    }
}
