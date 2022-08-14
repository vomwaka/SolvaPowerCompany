package com.solva.power.company.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Setter
@Getter
@Entity
@Table(name = "reversals")
public class ReversalEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BILL_REPAY_SEQ")
    @SequenceGenerator(sequenceName = "bill_repay_seq", allocationSize = 1, name = "BILL_REPAY_SEQ")

    private Long id;
    private String billerCode;
    private String customerReference;
    private String transactionAmount;
    private String transactionReference;
    private String currency;
    private Date transactionDate;
    private String customerName;
    private String billBalance;
    private String narration;
    private String creditAccount;
    private String customerMobileNumber;
    private String status;
    private String reversalReason;

    public ReversalEntity(){
    }

    public Long getId(){
        return id;
    }

    public void setId(Long id){
        this.id = id;
    }
}
