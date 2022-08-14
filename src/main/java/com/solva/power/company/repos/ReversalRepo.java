package com.solva.power.company.repos;

import com.solva.power.company.models.Payments;
import com.solva.power.company.models.ReversalEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReversalRepo extends JpaRepository<ReversalEntity, Long> {

    List<ReversalEntity> findDistinctByTransactionReference(String transactionReference);
}
