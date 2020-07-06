package com.petar.university_service.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class AddAssistantToSubjectReqDto implements Serializable {

    private int assistantId;

    private int subjectId;

}
