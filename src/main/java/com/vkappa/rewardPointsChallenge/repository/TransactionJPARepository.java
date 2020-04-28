package com.vkappa.rewardPointsChallenge.repository;

import com.vkappa.rewardPointsChallenge.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionJPARepository extends JpaRepository<Customer, Integer> {

}
