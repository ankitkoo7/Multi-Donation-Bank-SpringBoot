package com.OnlineMultiDonationBank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tblclothesdonation")
public class ClothesDonation {

	@Id
	@GeneratedValue
	@Column(name="donation_id")
	private int donationid;
	@Column(name="donor_id")
	private String donorid;
	private String ngoid;
	@Column(name="donation_method")
	private String donationmethods;
	@Column(name="donation_date")
	private String donationdate;
	private int amount;
	private String description;
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
	public String getDonationmethods() {
		return donationmethods;
	}
	public void setDonationmethods(String donationmethods) {
		this.donationmethods = donationmethods;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
