package com.petar.university_service.service;

import com.petar.university_service.model.dto.UserLoginDto;

public interface AuthenticationService {

    String logIn(UserLoginDto userLoginDto);

    int getId(String name, String lastName, String role);

}
