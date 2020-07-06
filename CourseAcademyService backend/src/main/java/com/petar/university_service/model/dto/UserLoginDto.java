package com.petar.university_service.model.dto;

import lombok.*;

import java.io.Serializable;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserLoginDto implements Serializable {

    private String username;

    private String password;

    private String role;

}
