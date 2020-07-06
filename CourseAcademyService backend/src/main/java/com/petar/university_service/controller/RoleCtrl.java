package com.petar.university_service.controller;

import com.petar.university_service.service.RoleService;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@NoArgsConstructor
@RestController
@RequestMapping("/role")
public class RoleCtrl {

    @Autowired
    private RoleService roleService;


    @GetMapping(path = "/roles")
    public ResponseEntity<List<String>> rolesForComboBox(){
        return new ResponseEntity<>(roleService.rolesForComboBox(), HttpStatus.ACCEPTED);
    }


}
