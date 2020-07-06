package com.petar.university_service.service.impl;

import com.petar.university_service.dao.RoleDao;
import com.petar.university_service.model.Role;
import com.petar.university_service.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;

    @Override
    public List<String> rolesForComboBox() {
        List<Role> roleList = roleDao.findAll();
        List<String> toReturn = new ArrayList<>();

        for(Role r: roleList){
            toReturn.add(r.getRole());
        }
        return toReturn;

    }
}
