package com.solva.power.company.controller;

import com.solva.power.company.models.ReversalEntity;
import com.solva.power.company.models.ReverseResponse;
import com.solva.power.company.repos.ReversalRepo;
import com.solva.power.company.services.ReversalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/")
public class ReversalController {

    @Autowired
    ReversalService reversalService;

    @Autowired
    ReversalRepo reversalRepo;

    // Initiate Reversal
    @PostMapping(value = "/reversal")
    public ReverseResponse utilityReversal(@RequestBody ReversalEntity request){
        return reversalService.initiateReversal(request);
    }

    // Get all reversals
    @GetMapping(value = "/reversals")
    public List<ReversalEntity> getAllReversedUtilities(){
        return reversalRepo.findAll();
    }

    // Get Single Reversed Transaction
    @GetMapping(value = "/reversal/{transactionReference}")
    public List<ReversalEntity> getBillByReference(@PathVariable String transactionReference){
        return reversalRepo.findDistinctByTransactionReference(transactionReference);
    }

}
