package com.vkappa.rewardPointsChallenge.entity;

import com.fasterxml.jackson.annotation.JsonInclude;
import java.util.Calendar;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class Customer {
  @Id
  @GeneratedValue
  private Integer customer_id;

  private String customer_name;

  @JsonInclude
  @Transient
  private Long totalRewardPoints;

  @OneToMany(mappedBy = "customer", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  private Set<Transaction> transactions;

  public Customer() {
    super();
  }

  public Customer(Integer id, String customer_name) {
    super();
    this.customer_id = id;
    this.customer_name = customer_name;
  }

  public Integer getCustomer_id() {
    return customer_id;
  }

  public void setCustomer_id(Integer customer_id) {
    this.customer_id = customer_id;
  }

  public String getCustomer_name() {
    return customer_name;
  }

  public void setCustomer_name(String customer_name) {
    this.customer_name = customer_name;
  }

  public Set<Transaction> getTransactions() {
    return transactions;
  }

  public void setTransactions(Set<Transaction> transactions) {
    this.transactions = transactions;
  }

  // Calculating total rewards points for customer purchase amount
  public Long getTotalRewardPoints() {
    Long totalRewardPoints = 0l;
    if (transactions != null || !transactions.isEmpty()) {
      for (Transaction trans : transactions)
        totalRewardPoints += trans.getRewardPoints();
      return totalRewardPoints.longValue();
    }
    return totalRewardPoints;
  }

  // Calculating monthly rewards points for customer purchase amount
  public Long calculateMonthlyRewardPoints(Integer month) {
    Long totalMonthlyRewardPoints = 0l;
    Integer trans_month = 0;
    Calendar cal = Calendar.getInstance();
    if (transactions != null || !transactions.isEmpty()) {
      for (Transaction trans : transactions) {
        //finding the month from the purchase date and then comparing it to the given Month to calculate rreward points
        cal.setTime(trans.getPurchase_date());
        trans_month = cal.get(Calendar.MONTH);
        if (month == trans_month + 1) {
          totalMonthlyRewardPoints += trans.getRewardPoints();
        }
      }
    }
    return totalMonthlyRewardPoints;
  }

}
