package com.vkappa.rewardPointsChallenge.controller;


import com.vkappa.rewardPointsChallenge.entity.Customer;
import com.vkappa.rewardPointsChallenge.service.RewardPointsService;
import java.text.DateFormatSymbols;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RewardPointsController {


  @Autowired
  private RewardPointsService rewardPointsService;

  //Get all the customers with all the customer details.
  @GetMapping("/customers")
  public List<Customer> findAllCustomers() {
    return rewardPointsService.findAllCustomer();
  }

  //Get all details of a customer with the calculated total reward points and all the purchase transactions.
  @GetMapping("/customers/{id}")
  public ResponseEntity<Customer> findCustomer(@PathVariable Integer id){

    Customer customer = rewardPointsService.findCustomerById(id);
    if(customer == null){
      return new ResponseEntity<Customer>(HttpStatus.NOT_FOUND);
    }
    return new ResponseEntity<Customer>(customer,HttpStatus.OK);
  }

  //Getting monthly rewards for a customer for a given month
  @GetMapping(path = "/customers/{id}/{month}")
  public List<String> findCustomerMonthlyRewards(@PathVariable Integer id, @PathVariable Integer month){

    Customer customer = rewardPointsService.findCustomerById(id);
    if(customer == null || (month <= 0 || month > 12)){
      return Arrays.asList("Entered Customer Id is wrong or Invalid Month, Please Enter the values correctly!!!");
    }

    String monthName = new DateFormatSymbols().getMonths()[month -1];
    Long monthlyRewards = rewardPointsService.findMonthlyRewards(customer, month);

    return Arrays.asList(customer.getCustomer_name()+ " has " + monthlyRewards + " rewards for the month of " + monthName);
  }

}
