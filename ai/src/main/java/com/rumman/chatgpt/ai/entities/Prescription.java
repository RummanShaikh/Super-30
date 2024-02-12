package com.rumman.chatgpt.ai.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Prescription {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String patientName;
    private String prescriptionText;
    private String doctorprescriptionText;

    // Default value for doctorprescriptionText
    public Prescription() {
        this.doctorprescriptionText = "not Seen";
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getPrescriptionText() {
        return prescriptionText;
    }

    public void setPrescriptionText(String prescriptionText) {
        this.prescriptionText = prescriptionText;
    }

    public String getDoctorprescriptionText() {
        return doctorprescriptionText;
    }

    public void setDoctorprescriptionText(String doctorprescriptionText) {
        this.doctorprescriptionText = doctorprescriptionText;
    }
}
