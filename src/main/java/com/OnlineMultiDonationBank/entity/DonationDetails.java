package com.OnlineMultiDonationBank.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbldonationdetails")
public class DonationDetails {

	@Id
	@GeneratedValue
	private int donationid;
	private String donorid;
	private String ngoid;
	private String donationcategory;
	private String donationdate;
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
	public String getDonationcategory() {
		return donationcategory;
	}
	public void setDonationcategory(String donationcategory) {
		this.donationcategory = donationcategory;
	}
	public String getDonationdate() {
		return donationdate;
	}
	public void setDonationdate(String donationdate) {
		this.donationdate = donationdate;
	}
	
	
}
