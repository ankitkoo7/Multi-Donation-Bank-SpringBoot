package com.OnlineMultiDonationBank.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.OnlineMultiDonationBank.entity.AdminDetails;
import com.OnlineMultiDonationBank.entity.DonationDetails;
import com.OnlineMultiDonationBank.entity.NgoDetails;
import com.OnlineMultiDonationBank.repository.AdminRepository;
import com.OnlineMultiDonationBank.repository.DonationsRepository;
import com.OnlineMultiDonationBank.repository.NgoRepository;

@Service
public class AdminService {

	@Autowired
	public AdminRepository arepo;
	@Autowired
	public NgoRepository nrepo;
	@Autowired
	public DonationsRepository drepo;
	
	public AdminDetails findByAdminidAndPassword(String adminid, String password) {
		return arepo.findByAdminidAndPassword(adminid, password);
	}
	
	public NgoDetails registerNgo(NgoDetails nd) {
		return nrepo.save(nd);
	}
	
	public List< NgoDetails> getAllNgoDetails() {

	return nrepo.findAll();
	}
	
	public void deletengo(String ngoId) {
		nrepo.deleteById(ngoId);
	}
	public NgoDetails editNgoo(String id) {
		
		return nrepo.findById(id).orElse(null);
	}
	
	public List<DonationDetails> getAllDonations(){
		return drepo.findAll();
	}
}
