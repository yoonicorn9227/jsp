package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.MemberDto;

public class MemberDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String query, id, pw, name, phone, gender, hobby;
	Timestamp mdate;
	MemberDto mdto = null;
	int result;
	// 커넥션 풀에서 connection 객체가져오기
	public Connection getConnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();
		} catch (Exception e) {e.printStackTrace();}
		
		return connection;
	}// getConnection()
	
	// 1.로그인 체크 메소드
	public MemberDto MDoLogin(String id2, String pw2) {
		try {
			conn = getConnection();
			query = "select * from member where id=? and pw=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id2);
			pstmt.setString(2, pw2);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				phone = rs.getString("phone");
				gender = rs.getString("gender");
				hobby = rs.getString("hobby");
				mdate = rs.getTimestamp("mdate");
				mdto = new MemberDto(id, pw, name, phone, gender, hobby, mdate);
			} // if

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}//try
		return mdto;
	}// MDoLogin(아이디,패스워드)

	
	//2.회원가입 - Insert
	public int memInsert(MemberDto mdto2) {
		try {
			conn=getConnection();
			query="insert into member values(?,?,?,?,?,?,sysdate)";
			pstmt=conn.prepareStatement(query);
			//1,2.....
			pstmt.setString(1, mdto2.getId());
			pstmt.setString(2, mdto2.getPw());
			pstmt.setString(3, mdto2.getName());
			pstmt.setString(4, mdto2.getPhone());
			pstmt.setString(5, mdto2.getGender());
			pstmt.setString(6, mdto2.getHobby());
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}//try
		return result;
	}



}// CLASS(MemberDao 1116)
