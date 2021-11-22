package com.OnlineMultiDonationBank.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.OnlineMultiDonationBank.entity.DonationDetails;

public interface DonationsRepository extends JpaRepository<DonationDetails, Integer>{

	@Query(value = "SELECT * FROM onlinemultidonationbank.tbldonationdetails where donorid like %:did%", nativeQuery = true) 
	public List<DonationDetails> findByDonoridLike(@Param("did") String donorid);
	
	@Query(value = "SELECT * FROM onlinemultidonationbank.tbldonationdetails where ngoid like %:nid%", nativeQuery = true) 
	public List<DonationDetails> findByNgoidLike(@Param("nid") String ngoname);
	
	public List<DonationDetails> findByNgoid(String ngoname);
}
