package com.java.www.dto;

import java.sql.Timestamp;

public class EcommentDto {

	private int cno;
	private int bno;
	private String id;
	private String cpw;
	private String ccontent;
	private Timestamp cdate;

	public EcommentDto() {} //기본생성자

	public EcommentDto(int bno, String id, String cpw, String ccontent) {
		this.bno = bno;
		this.id = id;
		this.cpw = cpw;
		this.ccontent = ccontent;
	}//4개 생성자

	public EcommentDto(int cno, int bno, String id, String cpw, String ccontent, Timestamp cdate) {
		this.cno = cno;
		this.bno = bno;
		this.id = id;
		this.cpw = cpw;
		this.ccontent = ccontent;
		this.cdate = cdate;
	}//전체생성자

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCpw() {
		return cpw;
	}

	public void setCpw(String cpw) {
		this.cpw = cpw;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public Timestamp getCdate() {
		return cdate;
	}

	public void setCdate(Timestamp cdate) {
		this.cdate = cdate;
	}

}// EcommentDto
