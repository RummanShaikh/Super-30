package com.example.Record;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
}
