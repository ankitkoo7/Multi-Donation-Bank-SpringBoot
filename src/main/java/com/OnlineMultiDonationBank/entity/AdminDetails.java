package com.OnlineMultiDonationBank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="tbladmindetails")
@SuppressWarnings("unused")
public class AdminDetails {

	@Id
	private String adminid;
	private String AdminName;
	private String password;
	private String DateOfBirth;
	private double Mobile;
	private char Sex;
	private String EmailId;
	private int Age;
	private String Addess;
	private String City;
	private String State;
	public String getAdminId() {
		return adminid;
	}
	public void setAdminId(String adminId) {
		adminid = adminId;
	}
	public String getAdminName() {
		return AdminName;
	}
	public void setAdminName(String adminName) {
		AdminName = adminName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public double getMobile() {
		return Mobile;
	}
	public void setMobile(double mobile) {
		Mobile = mobile;
	}
	public char getSex() {
		return Sex;
	}
	public void setSex(char sex) {
		Sex = sex;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	public String getAddess() {
		return Addess;
	}
	public void setAddess(String addess) {
		Addess = addess;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	
	
}
