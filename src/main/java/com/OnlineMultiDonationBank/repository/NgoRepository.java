package com.OnlineMultiDonationBank.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.OnlineMultiDonationBank.entity.NgoDetails;

public interface NgoRepository extends JpaRepository<NgoDetails, String> {

	public NgoDetails findByNgoidAndPassword(String ngoid, String password);
}
