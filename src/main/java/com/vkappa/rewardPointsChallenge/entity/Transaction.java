package com.vkappa.rewardPointsChallenge.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Transaction {
  @Id
  @GeneratedValue
  private Integer purchase_transaction_id;

  private Double purchase_amount;

  @Temporal(value=TemporalType.DATE)
  @Column(name = "purchase_date")
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date purchase_date;

  @ManyToOne
  @JsonIgnore
  @JoinColumn
  private Customer customer;

  public Transaction(){
    super();
  }

  public Transaction(Integer purchase_transaction_id, double purchase_amount, Date purchase_date, Customer customer) {
    super();
    this.purchase_transaction_id = purchase_transaction_id;
    this.purchase_amount = purchase_amount;
    this.purchase_date = purchase_date;
    this.customer = customer;
  }

  public Integer getPurchase_transaction_id() {
    return purchase_transaction_id;
  }

  public void setPurchase_transaction_id(Integer purchase_transaction_id) {
    this.purchase_transaction_id = purchase_transaction_id;
  }

  public double getPurchase_amount() {
    return purchase_amount;
  }

  public void setPurchase_amount(Double purchase_amount) {
    this.purchase_amount = purchase_amount;
  }

  public Date getPurchase_date() {
    return purchase_date;
  }

  public void setPurchase_date(Date purchase_date) {
    this.purchase_date = purchase_date;
  }

  public Customer getCustomer() {
    return customer;
  }

  public void setCustomer(Customer customer) {
    this.customer = customer;
  }

  //Calculating rewards points for a transaction
  public Long getRewardPoints(){

    Long points = 0l;
    if(purchase_amount > 50 && purchase_amount <=100){
      points += purchase_amount.intValue() -  50;
    } else if(purchase_amount > 100){
      points += (purchase_amount.intValue() - 100) * 2 + 50;
    }
    return points;
  }

  @Override
  public String toString() {
    return "Transaction{" +  "trans_id=" + purchase_transaction_id + ", trans_amount=" + purchase_amount
        + ", trans_date=" + purchase_date + ", customer=" + customer + '}';
  }


}
