package com.solva.power.company.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
public class ReverseResponse {

    private String statusCode;
    private String statusDesc;
    private String customerRef;
    private String transRef;
    private Long id;

    public ReverseResponse(String customerRef, String transRef){
        this.customerRef = customerRef;
        this.transRef = transRef;
        this.statusCode = "202";
        this.statusDesc = "Utility Payment Reversal initiated Successfully!";
    }

    public ReverseResponse(){

    }
}
