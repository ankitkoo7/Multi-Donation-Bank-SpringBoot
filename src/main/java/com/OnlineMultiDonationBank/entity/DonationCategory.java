package com.OnlineMultiDonationBank.entity;

import javax.persistence.Entity;
import javax.persistence.Table;


//@Entity
@Table(name="tbldonationcategory")
public class DonationCategory {

	private String categid;
	private String categdescription;
	public String getCategid() {
		return categid;
	}
	public void setCategid(String categid) {
		this.categid = categid;
	}
	public String getCategdescription() {
		return categdescription;
	}
	public void setCategdescription(String categdescription) {
		this.categdescription = categdescription;
	}
	
}
