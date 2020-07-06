package com.petar.university_service.model.dto;

import lombok.*;

import java.io.Serializable;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LoginResDto implements Serializable {

    public String token;

    public int id;

    public String name;

    public String lastName;

    public String role;

}
