package com.vkappa.rewardPointsChallenge.service;

import com.vkappa.rewardPointsChallenge.entity.Customer;
import com.vkappa.rewardPointsChallenge.repository.TransactionJPARepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RewardPointsService {

  @Autowired
  TransactionJPARepository transactionJPARepository;

  public List<Customer> findAllCustomer(){
    return transactionJPARepository.findAll();
  }

  public Customer findCustomerById(Integer id){
    return transactionJPARepository.findById(id).orElse(null);
  }

  public Long findMonthlyRewards(Customer customer , Integer id){
    return customer.calculateMonthlyRewardPoints(id);
  }

}
