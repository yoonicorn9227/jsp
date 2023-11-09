package com.java.www;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {

	Connection conn = null;
	PreparedStatement pstmt =null;
	ResultSet rs = null;
	MemberDto mdto =null;
	String query,id,pw,name,phone,gender,hobby;
	
	//회원가입 메소드
	public int insertMember(MemberDto dto) {
		int result = 1;
		try {
			conn = getConnection();
			query ="insert into member values(?,?,?,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getGender());
			pstmt.setString(6, dto.getHobby());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			} finally {
				try {
					if(rs!=null) rs.close();
					if(pstmt!=null) pstmt.close();
					if(conn!=null) conn.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}

		return result;
	}//insertMember()

	
	//DB연결 여기에서 들고온다(데이터를)
	public MemberDto loginCheck(String uid, String upw) { //로그인 체크 메소드
		//id,pw를 받아서 있는지 확인
		try {
			conn = getConnection(); //메소드 호출
			query= "select * from member where id=? and pw=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, uid);
			pstmt.setString(2, upw);
			rs=pstmt.executeQuery();
			if(rs.next()) { //rs.next() : 데이터유무 확인 있으면 if절안에 내용을 돈다
				id=rs.getString("id");
				pw=rs.getString("pw");
				name=rs.getString("name");
				phone=rs.getString("phone");
				gender=rs.getString("gender");
				hobby=rs.getString("hobby");
				mdto = new MemberDto(id,pw,name,phone,gender,hobby);
			}//if
			
		} catch (Exception e) {
			e.printStackTrace();
		
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}//try
		
		
		return mdto;
	}//loginCheck() - 로그인 체크 메소드
	
	
	
	//커넥션 풀에서 connection을 가져오는 메소드
	public Connection getConnection(){
		Connection connection = null;
		try {
			Context context = new InitialContext();//커넥션풀 객체선언
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle18");
			connection  = ds.getConnection();
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return connection;
	}



	


	
}//CLASS(DAO)
