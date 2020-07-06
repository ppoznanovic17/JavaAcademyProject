package com.petar.university_service.model.dto;

import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Professor;
import com.petar.university_service.model.Student;
import lombok.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Setter
@Getter
public class SubjectResDto implements Serializable {

    private int id;

    private String name;

    private List<Student> students = new ArrayList<>();

    private List<Assistant> assistants = new ArrayList<>();

    private Professor professor;



}
