package com.petar.university_service.model.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

@Setter
@Getter
@NoArgsConstructor
public class PointsToStudentDto implements Serializable {

    private int studentId;

    private int subjectId;

    private int points;

}
