package com.OnlineMultiDonationBank.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.OnlineMultiDonationBank.entity.AdminDetails;

public interface AdminRepository extends JpaRepository<AdminDetails, String>{

	public AdminDetails findByAdminidAndPassword(String adminid, String password);
}
