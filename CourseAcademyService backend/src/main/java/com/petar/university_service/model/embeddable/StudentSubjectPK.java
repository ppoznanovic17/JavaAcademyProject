package com.petar.university_service.model.embeddable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Embeddable
public class StudentSubjectPK implements Serializable {

    @Column( name = "student_id")
    private int studentId;

    @Column( name = "subject_id")
    private int subjectId;

}
