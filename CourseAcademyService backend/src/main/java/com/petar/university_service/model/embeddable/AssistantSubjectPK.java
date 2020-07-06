package com.petar.university_service.model.embeddable;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Embeddable
public class AssistantSubjectPK implements Serializable {

    @Column( name = "assistand_id")
    private int assistantId;

    @Column( name = "subject_id")
    private int subjectId;

    @Override
    public String toString() {
        return "AssistantSubjectPK{" +
                "assistantId=" + assistantId +
                ", subjectId=" + subjectId +
                '}';
    }
}
