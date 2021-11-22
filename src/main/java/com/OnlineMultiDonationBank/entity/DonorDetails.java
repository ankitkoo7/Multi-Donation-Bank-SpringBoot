package com.OnlineMultiDonationBank.entity;

import java.math.BigInteger;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity

@Table(name="tbldonordetails")

public class DonorDetails {
	@Id
	@Column(name="DonorId")
	private String adonorid;
	@Column(name="DonorName")
	private String bdonorname;
	@Column(name="Password")
	private String cpassword;
	@Column(name="DateOfBirth")
	private String ddateofbirth;
	@Column(name="Mobile")
	private BigInteger emobile;
	@Column(name="Sex")
	private char fsex;
	@Column(name="Emailid")
	private String gemailid;
	@Column(name="Age")
	private int hage;
	@Column(name="Building")
	private String ibuilding;
	@Column(name="Block")
	private String jblock;
	@Column(name="Area")
	private String karea;
	@Column(name="City")
	private String lcity;
	@Column(name="PIN")
	private String mpin;
	@Column(name="State")
	private String nstate;
	@Column(name="CreationDate")
	private String pcreationdate;
	@Column(name="Status")
	private String qstatus;
	public String getAdonorid() {
		return adonorid;
	}
	public void setAdonorid(String adonorid) {
		this.adonorid = adonorid;
	}
	public String getBdonorname() {
		return bdonorname;
	}
	public void setBdonorname(String bdonorname) {
		this.bdonorname = bdonorname;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getDdateofbirth() {
		return ddateofbirth;
	}
	public void setDdateofbirth(String ddateofbirth) {
		this.ddateofbirth = ddateofbirth;
	}
	public BigInteger getEmobile() {
		return emobile;
	}
	public void setEmobile(BigInteger emobile) {
		this.emobile = emobile;
	}
	public char getFsex() {
		return fsex;
	}
	public void setFsex(char fsex) {
		this.fsex = fsex;
	}
	public String getGemailid() {
		return gemailid;
	}
	public void setGemailid(String gemailid) {
		this.gemailid = gemailid;
	}
	public int getHage() {
		return hage;
	}
	public void setHage(int hage) {
		this.hage = hage;
	}
	public String getIbuilding() {
		return ibuilding;
	}
	public void setIbuilding(String ibuilding) {
		this.ibuilding = ibuilding;
	}
	public String getJblock() {
		return jblock;
	}
	public void setJblock(String jblock) {
		this.jblock = jblock;
	}
	public String getKarea() {
		return karea;
	}
	public void setKarea(String karea) {
		this.karea = karea;
	}
	public String getLcity() {
		return lcity;
	}
	public void setLcity(String lcity) {
		this.lcity = lcity;
	}
	public String getMpin() {
		return mpin;
	}
	public void setMpin(String mpin) {
		this.mpin = mpin;
	}
	public String getNstate() {
		return nstate;
	}
	public void setNstate(String nstate) {
		this.nstate = nstate;
	}
	public String getPcreationdate() {
		return pcreationdate;
	}
	public void setPcreationdate(String pcreationdate) {
		this.pcreationdate = pcreationdate;
	}
	public String getQstatus() {
		return qstatus;
	}
	public void setQstatus(String qstatus) {
		this.qstatus = qstatus;
	}
	
	
}
