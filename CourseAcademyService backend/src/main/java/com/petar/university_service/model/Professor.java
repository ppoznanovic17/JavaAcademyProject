package com.petar.university_service.model;

import com.sun.istack.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Objects;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Professor implements Serializable {

    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    public int id;

    @NotNull
    public String name;

    @NotNull
    public String lastName;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Professor professor = (Professor) o;
        return name.equalsIgnoreCase(professor.name) &&
                lastName.equalsIgnoreCase(professor.lastName);
    }


}
