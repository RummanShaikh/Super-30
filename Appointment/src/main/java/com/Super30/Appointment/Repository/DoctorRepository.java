package com.Super30.Appointment.Repository;

import com.Super30.Appointment.Model.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DoctorRepository extends JpaRepository<Doctor,Long> {
}
