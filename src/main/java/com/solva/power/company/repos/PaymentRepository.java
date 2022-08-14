package com.solva.power.company.repos;

import com.solva.power.company.models.Payments;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PaymentRepository extends JpaRepository<Payments, Long> {

    List<Payments> findDistinctByTransactionReference(String transactionReference);
}
