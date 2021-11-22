package com.OnlineMultiDonationBank.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.OnlineMultiDonationBank.entity.BookDonation;
import com.OnlineMultiDonationBank.entity.ClothesDonation;
import com.OnlineMultiDonationBank.entity.DonationDetails;
import com.OnlineMultiDonationBank.entity.DonorDetails;
import com.OnlineMultiDonationBank.entity.FoodDonation;
import com.OnlineMultiDonationBank.entity.MedicineDonation;
import com.OnlineMultiDonationBank.entity.MoneyDonation;
import com.OnlineMultiDonationBank.entity.NgoDetails;
import com.OnlineMultiDonationBank.repository.BookDonationRepository;
import com.OnlineMultiDonationBank.repository.ClothesDonationRepository;
import com.OnlineMultiDonationBank.repository.DonationsRepository;
import com.OnlineMultiDonationBank.repository.DonorRepository;
import com.OnlineMultiDonationBank.repository.FoodDonationRepository;
import com.OnlineMultiDonationBank.repository.MedicineRepository;
import com.OnlineMultiDonationBank.repository.MoneyDonationRepository;
import com.OnlineMultiDonationBank.repository.NgoRepository;

@Service
public class DonorServices {

	@Autowired
	public DonorRepository drepo;

	@Autowired
	public FoodDonationRepository fdrepo;

	@Autowired
	public NgoRepository nrepo;

	@Autowired
	public MedicineRepository mrepo;

	@Autowired
	public DonationsRepository ddrepo;
	
	@Autowired
	public BookDonationRepository bdrepo;
	
	@Autowired
	public ClothesDonationRepository cdrepo;
	
	@Autowired
	public MoneyDonationRepository mdrepo;

	public DonorDetails saveDonor(DonorDetails dd) {
		return drepo.save(dd);
	}

	public void deleteDonor(String id) {
		drepo.deleteById(id);
	}

	public List<DonorDetails> getDonors() {
		return drepo.findAll();
	}

	public DonorDetails getDonorById(String d_id) {
		return drepo.findById(d_id).orElse(null);
	}

	public DonorDetails findByAdonoridAndCpassword(String donorid, String password) {
		return drepo.findByAdonoridAndCpassword(donorid, password);
	}

	public FoodDonation saveFoodDonation(FoodDonation fd) {
		return fdrepo.save(fd);
	}

	public List<NgoDetails> getAllNgoName() {
		return nrepo.findAll();
	}

	public MedicineDonation saveMedicineDonation(MedicineDonation md) {
		return mrepo.save(md);
	}

	public DonationDetails saveDonationDetail(DonationDetails dd) {
		return ddrepo.save(dd);
	}
	
	public BookDonation saveBookDonation(BookDonation bd) {
		return bdrepo.save(bd);
	}
	
	public ClothesDonation saveClothesDonation(ClothesDonation cd) {
		return cdrepo.save(cd);
	}
	
	public MoneyDonation saveMoneyDonation(MoneyDonation md) {
		return mdrepo.save(md);
	}
	
	public List<DonationDetails> getDonationByDonor(String donorid) {
		return ddrepo.findByDonoridLike(donorid);
	}
}
