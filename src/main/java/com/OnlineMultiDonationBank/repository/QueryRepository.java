package com.OnlineMultiDonationBank.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.OnlineMultiDonationBank.entity.QueryDetails;

public interface QueryRepository extends JpaRepository<QueryDetails, Integer> {

}
