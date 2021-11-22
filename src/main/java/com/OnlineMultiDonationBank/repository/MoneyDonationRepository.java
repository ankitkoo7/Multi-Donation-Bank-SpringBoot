package com.OnlineMultiDonationBank.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.OnlineMultiDonationBank.entity.MoneyDonation;

public interface MoneyDonationRepository extends JpaRepository<MoneyDonation, Integer>{

}
