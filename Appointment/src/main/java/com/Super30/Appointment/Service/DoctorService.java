package com.Super30.Appointment.Service;

import com.Super30.Appointment.Model.Doctor;
import com.Super30.Appointment.Repository.DoctorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class DoctorService {

    @Autowired
    private DoctorRepository doctorRepository;

    public List<Doctor> getAllDoctors(){ return doctorRepository.findAll();};
}
