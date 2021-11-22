package com.OnlineMultiDonationBank.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tblmedicinedonation")
public class MedicineDonation {

	@Id
	@GeneratedValue
	private int donationid;
	private String donorid;
	private String ngoid;
	private String donationmethod;
	private String donationdate;
	private int amount;
	private String medicinename;
	private String medicinedesc;
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
	public String getMedicinename() {
		return medicinename;
	}
	public void setMedicinename(String medicinename) {
		this.medicinename = medicinename;
	}
	public String getMedicinedesc() {
		return medicinedesc;
	}
	public void setMedicinedesc(String medicinedesc) {
		this.medicinedesc = medicinedesc;
	}
	
}
