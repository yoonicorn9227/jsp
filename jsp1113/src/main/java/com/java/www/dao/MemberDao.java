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
	//인스턴스 변수 : 객체선언없이
	Connection conn = null;
	PreparedStatement pstmt=null;
	ResultSet rs= null;
	String query,id,pw,name,phone,gender,hobby;
	Timestamp mdate;
	MemberDto mdto = null;
	
	
//id,pw를 받아서 1개의 회원정보를 리턴
	public MemberDto loginCheck(String uid, String upw) {
		try {
			conn=getConnection();
			query="select * from member where id =? and pw=?";
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, uid);
			pstmt.setString(2,upw);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				id=rs.getString("id");//여기서 id는 sql컬럼명
				pw=rs.getString("pw");//여기서 pw는 sql컬럼명
				name=rs.getString("name");
				phone=rs.getString("phone");
				gender=rs.getString("gender");
				hobby=rs.getString("hobby");
				mdate=rs.getTimestamp("mdate");
				mdto = new MemberDto(id, pw, name, phone, gender,hobby, mdate);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
			e2.printStackTrace();
			}
		}
		return mdto	;
	}//loginCheck()

	
//★커넥션 풀에서 Connection 객체 가져옴.
public Connection getConnection() {
	Connection connection = null;
	try {
		Context context = new InitialContext();
		DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
		connection = ds.getConnection();
	} catch (Exception e) {e.printStackTrace();}
	return connection;
}//Connection






}//MemberDao
