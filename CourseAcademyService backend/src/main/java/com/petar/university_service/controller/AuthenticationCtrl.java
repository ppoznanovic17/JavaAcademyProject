package com.petar.university_service.controller;

import com.petar.university_service.model.dto.LoginResDto;
import com.petar.university_service.model.dto.UserLoginDto;
import com.petar.university_service.service.AuthenticationService;
import com.petar.university_service.service.AuthorizationService;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@NoArgsConstructor
@CrossOrigin(origins = "http://localhost:4201")
@RestController
@RequestMapping("/auth")
public class AuthenticationCtrl {

    @Autowired
    private AuthenticationService authenticationService;

    @Autowired
    private AuthorizationService authorizationService;

    @PostMapping(path = "/login")
    public ResponseEntity<LoginResDto> logIn(@RequestBody UserLoginDto userLoginDto) {
        String name;
        String lastName;
        if(userLoginDto.getRole().equalsIgnoreCase("admin")){
            name = "admin";
            lastName = "admin";
        }else{
            name = userLoginDto.getUsername().split("_")[0];
            lastName = userLoginDto.getUsername().split("_")[1];
        }
        System.out.println(userLoginDto.getUsername() + " " + userLoginDto.getPassword() + " " + userLoginDto.getRole());
        String s = authenticationService.logIn(userLoginDto);
        if(s == null) return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
        LoginResDto loginResDto = LoginResDto.builder()
                .name(name)
                .lastName(lastName)
                .token(s)
                .role(userLoginDto.getRole()).build();
        return new ResponseEntity<>(loginResDto, HttpStatus.CREATED);
    }

    @GetMapping("/{name}/{lastname}/{role}")
    public int getIdFromName(@PathVariable String name, @PathVariable String lastname, @PathVariable String role){
        return authenticationService.getId(name, lastname, role);
    }


}
