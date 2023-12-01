package com.java.www.dto;

import java.sql.Timestamp;

public class Stu_memberDto {

	private String id;
	private String pw;
	private String name;
	private String gender;
	private String p_num;
	private String phone;
	private String email;
	private String region;
	private Timestamp sdate;

	public Stu_memberDto() {}// 기본생성자
	
	public Stu_memberDto(String id, String pw, String name, String gender, String p_num, String phone, String email,
			String region) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.p_num = p_num;
		this.phone = phone;
		this.email = email;
		this.region = region;
	}//8개 생성자

	public Stu_memberDto(String id, String pw, String name, String gender, String p_num, String phone, String email,
			String region, Timestamp sdate) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.p_num = p_num;
		this.phone = phone;
		this.email = email;
		this.region = region;
		this.sdate = sdate;
	}//전체생성자


	//♣Getter&Setter
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getP_num() {
		return p_num;
	}

	public void setP_num(String p_num) {
		this.p_num = p_num;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public Timestamp getSdate() {
		return sdate;
	}

	public void setSdate(Timestamp sdate) {
		this.sdate = sdate;
	}

}// CLASS(Stu_memberDto)
