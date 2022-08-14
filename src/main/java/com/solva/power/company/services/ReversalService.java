package com.solva.power.company.services;

import com.solva.power.company.exceptions.ResourceNotFoundException;
import com.solva.power.company.models.ReversalEntity;
import com.solva.power.company.models.ReverseResponse;
import com.solva.power.company.repos.ReversalRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReversalService {

    private static final Logger logger = LoggerFactory.getLogger(PaymentService.class);

    @Autowired
    private ReversalRepo reversalRepo;

    public ReverseResponse initiateReversal(ReversalEntity reversal){

        if (reversal == null || reversal.getBillerCode() == null){
            throw new ResourceNotFoundException("Missing request exception");
        }else{
            logger.info("###### Reversal Request #####: {} ", reversal);
            ReversalEntity asynch = reversalRepo.save(reversal);
            ReverseResponse response = new ReverseResponse();
            response.setId(asynch.getId());
            response.setCustomerRef(reversal.getCustomerReference());
            response.setStatusDesc("Utility Payment Reversal initiated Successfully!");
            response.setStatusCode("202");
            response.setTransRef(reversal.getTransactionReference());
            return response;
        }

    }

}
