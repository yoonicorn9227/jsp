package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.MemberDto;

public class MemberDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MemberDto mdto = null;
	ArrayList<MemberDto> list = new ArrayList<MemberDto>();
	String query, id, pw, name, phone, gender, hobby;
	Timestamp mdate;
	int result;

	// ★커넥션 풀에서 connection 객체가져오기
	Connection getconnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();
		} catch (Exception e) {e.printStackTrace();}
		return connection;
	}// getconection()

	// 1.로그인 체크 메소드
	public MemberDto DoLoginSelect(String id2, String pw2) {
		try {
			conn = getconnection();
			query = "select * from member where id=? and pw=?";
			pstmt = conn.prepareStatement(query);
			// 1,2
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
			} // if(rs.next)
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null)pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		return mdto;
	}// DoLoginSelect()

	//회원 1명가져오기
	public MemberDto selectOne(String id2) {
		try {
			conn=getconnection();
			query="select * from member where id=?";
			pstmt=conn.prepareStatement(query);
			//1,2
			pstmt.setString(1, id2);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				id=rs.getString("id");
				pw=rs.getString("pw");
				name=rs.getString("name");
				phone=rs.getString("phone");
				gender=rs.getString("gender");
				hobby=rs.getString("hobby");
				mdate=rs.getTimestamp("mdate");
				mdto = new MemberDto(id, pw, name, phone, gender, hobby,mdate);
			}//if
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null)pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		return mdto; //mdto가 있다 -id가 있다 
	}//selectOne()

	//회원가입 - insert
	public int mInsert(MemberDto mdto2) {
		try {
			conn=getconnection();
			query="insert into member values(?,?,?,?,?,?,sysdate)";
			pstmt=conn.prepareStatement(query);
			//1,2
			pstmt.setString(1, mdto2.getId());
			pstmt.setString(2,  mdto2.getPw());
			pstmt.setString(3,  mdto2.getName());
			pstmt.setString(4,  mdto2.getPhone());
			pstmt.setString(5,  mdto2.getGender());
			pstmt.setString(6,  mdto2.getHobby());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null)pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		return result;
	}//mInsert()
	//회원정보 수정 
	public int mUpdate(MemberDto mdto2) {
		try {
			conn=getconnection();
			query="update member set pw=?,phone=?,gender=?,hobby=? where id=?";
			pstmt=conn.prepareStatement(query);
			//1,2
			pstmt.setString(1,  mdto2.getPw());
			pstmt.setString(2,  mdto2.getPhone());
			pstmt.setString(3,  mdto2.getGender());
			pstmt.setString(4,  mdto2.getHobby());
			pstmt.setString(5,	mdto2.getId());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null)pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		
		
		return result;
	}//mUpdate()

}// MemberDao
