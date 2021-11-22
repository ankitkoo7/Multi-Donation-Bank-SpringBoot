package com.OnlineMultiDonationBank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tblfooddonation")
public class FoodDonation {

	@GeneratedValue
	@Id
	@Column(name="DonationId")
	private int donationid;
	@Column(name="DonorId")
	private String donorid;
	@Column(name="NGOId")
	private String ngoid;
	@Column(name="DonationMethod")
	private String donationmethod;
	@Column(name="DonationDate")
	private String donationdate;
	@Column(name="Amount")
	private int amount;
	@Column(name="NoOfPeople")
	private int noofpeople;
	public int getDonationid() {
		return donationid;
	}
	public void setDonationid(int donationid) {
		this.donationid = donationid;
	}
	public String getDonorid() {
		return donorid;
	}
	public void setDonorid(String donorid) {
		this.donorid = donorid;
	}
	public String getNgoid() {
		return ngoid;
	}
	public void setNgoid(String ngoid) {
		this.ngoid = ngoid;
	}
	public String getDonationmethod() {
		return donationmethod;
	}
	public void setDonationmethod(String donationmethod) {
		this.donationmethod = donationmethod;
	}
	public String getDonationdate() {
		return donationdate;
	}
	public void setDonationdate(String donationdate) {
		this.donationdate = donationdate;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getNoofpeople() {
		return noofpeople;
	}
	public void setNoofpeople(int noofpeople) {
		this.noofpeople = noofpeople;
	}
	
}
