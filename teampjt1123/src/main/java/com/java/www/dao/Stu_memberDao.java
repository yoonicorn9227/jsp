package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.Stu_memberDto;

public class Stu_memberDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String query,id,pw,name,gender,phone,email,region;
	int p_num;
	Timestamp sdate;
	Stu_memberDto smdto = null;
	// ★커넥션풀에서 Connection객체 가져오기
	public Connection getConnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();
		} catch (Exception e) {e.printStackTrace();}
		return connection;
	}// getConnection

	public Stu_memberDto Dao_MViewOne(String id2) {
		smdto=null;
		try {
			conn=getConnection();
			query="select * stu_mem where id=?";
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, id2);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				id = rs.getString("id");
				System.out.println("IF id : " + id);
				pw = rs.getString("pw");
				name = rs.getString("name");
				gender = rs.getString("gender");
				p_num = rs.getInt("p_num");
				phone = rs.getString("phone");
				email = rs.getString("email");
				region = rs.getString("region");
				sdate = rs.getTimestamp("sdate");
				smdto = new Stu_memberDto(id, pw, name, gender, p_num, phone, email, region, sdate);
			}//if
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} //try
		return smdto;
	}//Dao_MViewOne();
	
}//Stu_memberDao()
