package com.example.Record;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
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

    @GetMapping("/pa")
    public String index(Model model) {
        List<Patient> patients = patientRepository.findAll();
        model.addAttribute("patients", patients);
        return "index";
    }

    @PostMapping("/addPatient")
    public String addPatient(Patient patient) {
    	patientRepository.save(patient);

       
        return "redirect:/display";
    }


    @GetMapping("/display")
    public String display(Model model) {
        
        List<Patient> patients = patientRepository.findAll();
        model.addAttribute("patients", patients);
        for (Patient patient: patients)
        {
            System.out.println(patient);
        }
        
        return "display";
    }

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
}
