package com.solva.power.company.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
public class Response {

    private String statusCode;
    private String statusDesc;
    private String customerRef;
    private String transRef;
    private Long id;

    public Response(String customerRef, String transRef){

        this.customerRef = customerRef;
        this.transRef = transRef;
        this.statusCode = "201";
        this.statusDesc = "Bill Payment Received Successfully!";
    }

    public Response(){

    }
}
