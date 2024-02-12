package com.Super30.Appointment.Repository;

import com.Super30.Appointment.Model.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AppointmentRepository extends JpaRepository<Appointment,Long> {
}
