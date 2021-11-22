package com.OnlineMultiDonationBank.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.OnlineMultiDonationBank.entity.DonationDetails;
import com.OnlineMultiDonationBank.entity.DonorDetails;
import com.OnlineMultiDonationBank.entity.NgoDetails;
import com.OnlineMultiDonationBank.repository.DonationsRepository;
import com.OnlineMultiDonationBank.repository.DonorRepository;
import com.OnlineMultiDonationBank.repository.NgoRepository;

@Service
public class NgoService {

	@Autowired
	public NgoRepository nrepo;
	
	@Autowired
	public DonationsRepository dsrepo;
	
	@Autowired
	public DonorRepository drepo;
	
	public NgoDetails findByNgoidAndPassowrd(String ngoid, String password) {
		return nrepo.findByNgoidAndPassword(ngoid, password);
	}
	
	public List<DonationDetails> getDonationsByNgo(String ngoname){
		return dsrepo.findByNgoidLike(ngoname);
	}
	
	public NgoDetails getOrgname(String ngoid) {
	return nrepo.findById(ngoid).orElse(null);
	}
	
	public List<DonorDetails> getDonorDetails() {
		return drepo.findAll();
	}
}
