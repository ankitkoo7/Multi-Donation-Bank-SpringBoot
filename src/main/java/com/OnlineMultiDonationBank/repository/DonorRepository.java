package com.OnlineMultiDonationBank.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.OnlineMultiDonationBank.entity.DonorDetails;

public interface DonorRepository extends JpaRepository<DonorDetails, String>{

	public DonorDetails findByAdonoridAndCpassword(String donorid, String password);
	
}
