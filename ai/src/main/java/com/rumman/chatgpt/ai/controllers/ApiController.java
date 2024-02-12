package com.rumman.chatgpt.ai.controllers;

import com.rumman.chatgpt.ai.entities.Prescription;
import com.rumman.chatgpt.ai.repository.PrescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.rumman.chatgpt.ai.entities.ApiRequest;
import com.rumman.chatgpt.ai.entities.ApiResponse;
import com.rumman.chatgpt.ai.services.AiRequestProcessor;

import lombok.AllArgsConstructor;
import org.springframework.web.client.RestTemplate;

import java.util.*;


//@RestController

@Controller
@AllArgsConstructor
public class ApiController {

	@Autowired
	private final AiRequestProcessor aiProcessor;
	private PrescriptionRepository prescriptionRepository;

	@Autowired
	private RestTemplate restTemplate;

	@GetMapping("/example")
	public String example() {
		// Interpolate the ID into the URL
		int id=52;
		String url = "http://localhost:6969/appointments/" + id;

		// Use RestTemplate to make HTTP requests
		String response = restTemplate.getForObject(url, String.class);

		return "Response: " + response;
	}

//	@GetMapping("/chat")
	@RequestMapping("/welcome")
	public String showChatPage(Model model) {
		model.addAttribute("response","");
		System.out.println("Welcome");
		return "welcome";
	}

	@RequestMapping("/chat")
	public String chat(){
		System.out.println("chat");
		return "chat";
	}

	@PostMapping(value = "api/v1/ai/request")
	public String processChat(@RequestParam("message") String message, Model model) {
		ApiRequest request = new ApiRequest(message);
		ApiResponse response = aiProcessor.process(request);
		model.addAttribute("response", response.getResponse());
		System.out.println("AI_response");
		return "chat";
    }

	@PostMapping("/submitPrescription")
	public String createPrescription(@ModelAttribute Prescription prescription, Model model) {
		Prescription savedPrescription = prescriptionRepository.save(prescription);
		model.addAttribute("prescription", savedPrescription);
		System.out.println("Data Saved");
		return "submitPrescription";
	}

	@GetMapping("/displayPrescriptionResult")
	public String displayPrescriptionResult(
			@RequestParam(name = "prescriptionId") Long prescriptionId,
			Model model) {
		try {
			Optional<Prescription> prescriptionOptional = prescriptionRepository.findById(prescriptionId);

			if (prescriptionOptional.isPresent()) {
				Prescription prescription = prescriptionOptional.get();
				model.addAttribute("prescription", prescription);
				System.out.println("displayPrescriptionResult");
				return "displayPrescriptionResult";
			} else {
				model.addAttribute("prescription", null);
				model.addAttribute("errorMessage", "Prescription not found for ID: " + prescriptionId);
				System.out.println("displayPrescriptionResultelsewala");
				return "displayPrescriptionResult";
			}
		} catch (Exception e) {
			model.addAttribute("prescription", null);
			System.out.println("displayPrescriptionResultcatchwala");
			model.addAttribute("errorMessage", "Error retrieving prescription: " + e.getMessage());
			return "displayPrescriptionResult";
		}
	}
	// ApiController.java

	private static final String DOCTOR_PASSWORD = "12345"; // Set your desired doctor's password

	@GetMapping("/alterDoctorPrescriptionForm")
	public String alterDoctorPrescriptionForm(Model model) {
		List<Prescription> prescriptions = prescriptionRepository.findAll();
		model.addAttribute("prescriptions", prescriptions);
		model.addAttribute("prescription", new Prescription());
		return "alterDoctorPrescriptionForm";
	}


	@PostMapping("/alterDoctorPrescription")
	public String alterDoctorPrescription(
			@ModelAttribute Prescription updatedPrescription,
			@RequestParam("doctorPassword") String doctorPassword,
			Model model) {
		// Check if the provided password is correct
		if (!doctorPassword.equals(DOCTOR_PASSWORD)) {
			model.addAttribute("errorMessage", "Incorrect doctor password");
			return "wrongPassword";
		}

		Prescription existingPrescription = prescriptionRepository.findById(updatedPrescription.getId()).orElse(null);

		if (existingPrescription != null) {
			existingPrescription.setDoctorprescriptionText(updatedPrescription.getDoctorprescriptionText());
			Prescription savedPrescription = prescriptionRepository.save(existingPrescription);
			model.addAttribute("prescription", savedPrescription);
			System.out.println("Doctor Prescription Text Altered");
			return "alterDoctorPrescriptionResult";
		} else {
			model.addAttribute("errorMessage", "Prescription not found");
			return "alterDoctorPrescriptionResult";
		}
	}

}
