package com.sist.dao;

import lombok.Data;


public class MemberVO {
	private String id, pwd, namd, admin, address;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNamd() {
		return namd;
	}

	public void setNamd(String namd) {
		this.namd = namd;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getAddress() {
		return sido+" "+gugun+" "+dong+" "+bunji;
	}
}
