package com.OnlineMultiDonationBank.entity;



import java.math.BigInteger;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tblngodetails")
public class NgoDetails {

@Id
private String ngoid;
private String orgname;
private String password;
private String ownername;
private BigInteger n_mobile;
private String n_emailid;
private String n_address;
private String n_state;
private BigInteger o_mobile;
private String o_emailid;
private char o_gender;
private String o_address;
private String o_state;
private String creationdate;
private String status;
private String donationcateg;
public String getNgoid() {
	return ngoid;
}
public void setNgoid(String ngoid) {
	this.ngoid = ngoid;
}
public String getOrgname() {
	return orgname;
}
public void setOrgname(String orgname) {
	this.orgname = orgname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getOwnername() {
	return ownername;
}
public void setOwnername(String ownername) {
	this.ownername = ownername;
}
public BigInteger getN_mobile() {
	return n_mobile;
}
public void setN_mobile(BigInteger n_mobile) {
	this.n_mobile = n_mobile;
}
public String getN_emailid() {
	return n_emailid;
}
public void setN_emailid(String n_emailid) {
	this.n_emailid = n_emailid;
}
public String getN_address() {
	return n_address;
}
public void setN_address(String n_address) {
	this.n_address = n_address;
}
public String getN_state() {
	return n_state;
}
public void setN_state(String n_state) {
	this.n_state = n_state;
}
public BigInteger getO_mobile() {
	return o_mobile;
}
public void setO_mobile(BigInteger o_mobile) {
	this.o_mobile = o_mobile;
}
public String getO_emailid() {
	return o_emailid;
}
public void setO_emailid(String o_emailid) {
	this.o_emailid = o_emailid;
}
public char getO_gender() {
	return o_gender;
}
public void setO_gender(char o_gender) {
	this.o_gender = o_gender;
}
public String getO_address() {
	return o_address;
}
public void setO_address(String o_address) {
	this.o_address = o_address;
}
public String getO_state() {
	return o_state;
}
public void setO_state(String o_state) {
	this.o_state = o_state;
}
public String getCreationdate() {
	return creationdate;
}
public void setCreationdate(String creationdate) {
	this.creationdate = creationdate;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getDonationcateg() {
	return donationcateg;
}
public void setDonationcateg(String donationcateg) {
	this.donationcateg = donationcateg;
}



}
