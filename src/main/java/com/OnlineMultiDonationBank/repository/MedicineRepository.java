package com.OnlineMultiDonationBank.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.OnlineMultiDonationBank.entity.MedicineDonation;

public interface MedicineRepository extends JpaRepository<MedicineDonation, Integer>{

}
