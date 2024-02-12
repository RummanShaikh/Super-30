package com.rumman.chatgpt.ai.repository;

import com.rumman.chatgpt.ai.entities .Prescription;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {
}
