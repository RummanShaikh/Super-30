package com.Super30.Appointment.Controller;

import com.Super30.Appointment.Model.Appointment;
import com.Super30.Appointment.Model.Doctor;
import com.Super30.Appointment.Model.User;
import com.Super30.Appointment.Repository.AppointmentRepository;
import com.Super30.Appointment.Repository.DoctorRepository;
import com.Super30.Appointment.Service.AppointmentService;
import com.Super30.Appointment.Service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private AppointmentService appointmentService;

    public HomeController(AppointmentService appointmentService) {
        this.appointmentService = appointmentService;
    }

//    @GetMapping("/appointments/{Id}")
//    public Appointment getAppointmentById(@PathVariable Long Id, Model model) {
//        Appointment appointment = appointmentService.getAppointmentById(Id);
////        if (appointment == null) {
////            // Handle case where appointment is not found
////            return "appointmentNotFound"; // Ensure you have an appointmentNotFound.html template
////        }
//        //model.addAttribute("appointment", appointment);
//        System.out.println("Appointment details: " + appointment); // Logging appointment details
//        return appointment;
//    }

    @GetMapping("/appointments/{Id}")
    public ResponseEntity<?> getAppointmentById(@PathVariable Long Id) {
        Appointment appointment = appointmentService.getAppointmentById(Id);
        if (appointment == null) {
            // Handle case where appointment is not found
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(appointment);
    }

    @PostMapping("/receiveUser")
    public ResponseEntity<String> receiveUser(@RequestBody User user) {
        // Process the received user object
        System.out.println("Received user: " + user.toString());
        return new ResponseEntity<>("User received successfully", HttpStatus.OK);
    }


    @RequestMapping("/patient")
    public String showPage(Model model) {
        System.out.println("Welcome");
        return "index";
    }

    @Autowired
    private DoctorService doctorService;

    @RequestMapping("/appointmentForm")
    public String appointmentForm(Model model) {
        List<Doctor> doctors = doctorService.getAllDoctors();
        model.addAttribute("doctors", doctors);
        return "Appointment";
        }

    @PostMapping("/submitAppointment")
    public String submit(@RequestParam("patientName") String patient_name,
                         @RequestParam("doctorName") String doctor_name,
                         @RequestParam("appointmentDate") Date date) {

        Appointment appointment = new Appointment();
        appointment.setPatient_name(patient_name);
        appointment.setDoctor_name(doctor_name);
        appointment.setDate(date);
        appointmentRepository.save(appointment);
        System.out.println("Data Saved");
        return "submitAppointment";
    }

    @GetMapping("/checkAppointment")
    public String checkAppointment(Model model) {
        List<Appointment> appointments = appointmentService.getAllAppointments();
        model.addAttribute("appointments", appointments);
        for (Appointment appointment : appointments) {
            System.out.println(appointment);
        }
        return "checkAppointment";
    }

    @RequestMapping("/doctor")
    public String confirm(Model model) {
        List<Appointment> appointments = appointmentService.getAllAppointments();
        model.addAttribute("appointments", appointments);
        return "confirm";
    }

    @PostMapping("/confirmAppointment")
    public String confirmAppointment(@RequestParam("confirmingId") Long id,
                                     @RequestParam("confirmingTime") String time) {

        appointmentService.updateAppointment(id, time);
        return "submitConfirm";
    }
}
