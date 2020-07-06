package com.petar.university_service.model;

import com.petar.university_service.model.embeddable.StudentSubjectPK;
import com.sun.istack.NotNull;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class StudentSubject implements Serializable {

    @EmbeddedId
    private StudentSubjectPK id;

    private int assistantPoints;

    private int professorPoints;


    private int mark;

    private int studentSubjectRating;

    private String studentSubjectReview;

    @ManyToOne
    @MapsId("studentId")
    @JoinColumn(name = "student_id")
    private Student student;

    @ManyToOne
    @MapsId("subjectId")
    @JoinColumn(name = "subject_id")
    private Subject subject;

}
