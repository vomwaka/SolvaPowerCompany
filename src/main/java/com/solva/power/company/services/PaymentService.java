package com.solva.power.company.services;

import com.solva.power.company.exceptions.ResourceNotFoundException;
import com.solva.power.company.models.Payments;
import com.solva.power.company.models.Response;
import com.solva.power.company.repos.PaymentRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {

    private static final Logger logger = LoggerFactory.getLogger(PaymentService.class);

    @Autowired
    private PaymentRepository paymentRepository;

    public Response createPayment(Payments payments){

        if (payments == null || payments.getBillerCode().equals("null")){
            throw new ResourceNotFoundException("Missing request exception");
        }else{
            logger.info("###### Bill Payment Request #####: {} ", payments);
            Payments asynch = paymentRepository.save(payments);
            Response response = new Response();
            response.setId(asynch.getId());
            response.setCustomerRef(payments.getCustomerReference());
            response.setStatusDesc("Bill Payment Request was Successful");
            response.setStatusCode("201");
            response.setTransRef(payments.getTransactionReference());
            return response;
        }

    }
}
