package com.solva.power.company.controller;

import com.solva.power.company.models.Payments;
import com.solva.power.company.models.Response;
import com.solva.power.company.repos.PaymentRepository;
import com.solva.power.company.services.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/")
public class PaymentController {

    @Autowired
    PaymentService paymentService;
    @Autowired
    PaymentRepository paymentRepository;

    // Make Utility payment
    @PostMapping(value = "/utilitypayment")
    public Response billPayment(@RequestBody Payments request){
        return paymentService.createPayment(request);
    }
    
    //Gell All Utility Payments
    @GetMapping(value = "/utilitypayments")
    public List<Payments> getAllPaidBills(){
        return paymentRepository.findAll();
    }

    // Query Utility by bill reference
    @GetMapping(value = "/utilityInfo/{transactionReference}")
    public List<Payments> getBillByReference(@PathVariable String transactionReference){
        return paymentRepository.findDistinctByTransactionReference(transactionReference);
    }

}
