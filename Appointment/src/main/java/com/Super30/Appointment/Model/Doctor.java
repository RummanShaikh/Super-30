package com.Super30.Appointment.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;
    private String name;
    private String specification;
    @Override
    public String toString() {
        return "Doctor{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", specification='" + specification + '\'' +
                '}';
    }


    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }


    public Doctor(Long id, String name, String specification) {
        Id = id;
        this.name = name;
        this.specification = specification;
    }


    public Doctor() {
    }




}
