package com.OnlineMultiDonationBank.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.OnlineMultiDonationBank.entity.QueryDetails;
import com.OnlineMultiDonationBank.repository.QueryRepository;

@Service
public class HomeService {

	@Autowired
	public QueryRepository qrepo;
	
	public QueryDetails saveGeneralQuery(QueryDetails qd) {
		return qrepo.save(qd);
	}
	
	public List<QueryDetails> getAllQueries(){
		 return qrepo.findAll();
	}
}
