package com.example.Record;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

@Controller
public class PatientController {
    @Autowired
    private PatientRepository patientRepository;

//    @GetMapping("/pa")
//    public String index(Model model) {
//        List<Patient> patients = patientRepository.findAll();
//        model.addAttribute("patients", patients);
//        return "index";
//    }

//    @PostMapping("/addPatient")
//    public String addPatient(Patient patient) {
//    	patientRepository.save(patient);
//
//
//        return "redirect:/display";
//    }


    //Dashboard for admin
    @GetMapping("/display")
    public String display(Model model) {

//        String url = "http://localhost:6969/appointment/all";
//
//        // Use RestTemplate to make HTTP requests
//        ResponseEntity<List<Appointment>> response = restTemplate.exchange(
//                url,
//                HttpMethod.GET,
//                null,
//                new ParameterizedTypeReference<List<Appointment>>() {}
//        );
//        List<Appointment> appointments = response.getBody();
//        model.addAttribute("appointments", appointments);
//        System.out.println(appointments);

//        String url1 = "http://localhost:8080/prescription/all";
//
//        // Use RestTemplate to make HTTP requests
//        ResponseEntity<List<Prescription>> response1 = restTemplate.exchange(
//                url1,
//                HttpMethod.GET,
//                null,
//                new ParameterizedTypeReference<List<Prescription>>() {}
//        );
//        List<Prescription> prescription = response1.getBody();
//        model.addAttribute("prescription", prescription);
//        System.out.println(prescription);

//        String url2 = "http://localhost:6969/doctor/all";
//
//        // Use RestTemplate to make HTTP requests
//        ResponseEntity<List<Doctor>> response2 = restTemplate.exchange(
//                url2,
//                HttpMethod.GET,
//                null,
//                new ParameterizedTypeReference<List<Doctor>>() {}
//        );
//        List<Doctor> doctors = response2.getBody();
//        model.addAttribute("doctors", doctors);
//        System.out.println(doctors);

        return "appointmentDetails";

    }

    //Appointment Page
    @GetMapping("/appointment")
    public String appointment(Model model)
    {
        String url = "http://localhost:6969/appointment/all";

        // Use RestTemplate to make HTTP requests
        ResponseEntity<List<Appointment>> response = restTemplate.exchange(
                url,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<List<Appointment>>() {}
        );
        List<Appointment> appointments = response.getBody();
        model.addAttribute("appointments", appointments);
        System.out.println(appointments);
        return "appointment";
    }

    //Prescription
    @GetMapping("/prescription")
    public String prescription(Model model)
    {
        String url1 = "http://localhost:8080/prescription/all";

        // Use RestTemplate to make HTTP requests
        ResponseEntity<List<Prescription>> response1 = restTemplate.exchange(
                url1,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<List<Prescription>>() {}
        );
        List<Prescription> prescription = response1.getBody();
        model.addAttribute("prescription", prescription);
        System.out.println(prescription);
        return "prescription";
    }

    //Doctors
    @GetMapping("/doctors")
    public String doctor(Model model)
    {
        String url2 = "http://localhost:6969/doctor/all";

        // Use RestTemplate to make HTTP requests
        ResponseEntity<List<Doctor>> response2 = restTemplate.exchange(
                url2,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<List<Doctor>>() {}
        );
        List<Doctor> doctors = response2.getBody();
        model.addAttribute("doctors", doctors);
        System.out.println(doctors);
        return "doctor";
    }

    //Data from login microservice
    @PostMapping("/receiveUser")
    public ResponseEntity<String> receiveUser(@RequestBody User user) {
        // Process the received user object
        System.out.println("Received user: " + user.toString());
        return new ResponseEntity<>("User received successfully", HttpStatus.OK);
    }

    @Autowired
    private RestTemplate restTemplate;


    private Patient patient;

//    @GetMapping("/record/{recordId}")
//    public ResponseEntity<Optional<Patient>> getRecordDetails(@PathVariable Long recordId) {
//        // Logic to fetch record information
//        Optional<Patient> record = patientRepository.findById(recordId);
//
//        // Call the login microservice to get user information
//        String username = patient.getEmail();
//        User user = restTemplate.getForObject("http://login/user/{username}", User.class, username);
//
//        // Do something with user information
//
//        return ResponseEntity.ok(record);
//    }

    @PostMapping("/users")
    public ResponseEntity<String> loginHomepage(@RequestParam("userName") String userName,
                                @RequestParam("password") String password, Model model)
    {
        String apiUrl="http://login/login";
        ResponseEntity<String> response= restTemplate.postForEntity(apiUrl, userName, String.class);

        System.out.println(response);
        return response;
    }

//    @GetMapping("/example")
//    public String example(Model model) {
//        String url = "http://localhost:6969/appointment/all";
//
//        // Use RestTemplate to make HTTP requests
//        ResponseEntity<List<Appointment>> response = restTemplate.exchange(
//                url,
//                HttpMethod.GET,
//                null,
//                new ParameterizedTypeReference<List<Appointment>>() {}
//        );
//        List<Appointment> appointments = response.getBody();
//        model.addAttribute("appointments", appointments);
//        System.out.println(appointments);
//        return "appointmentDetails";
//    }


    //Add doctor
    @RequestMapping("/patient")
    public String showPage(Model model) {
        //System.out.println("Welcome");
        return "redirect:http://localhost:8888/appointment/doctorForm";
    }
}
