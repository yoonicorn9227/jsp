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
	Timestamp mdate= null;
	String query="",id="", pw="",name="",phone="",gender="",hobby="";
	String[] hobbys = null;
	MemberDto mdto = null;
	
	
	
	
	
	
	
	
	
	//회원정보 입력 메소드(회원가입)
	public int memberInsert(MemberDto mdto) {
		int result=0;
		
		try {
			conn=getConnection();
			query="insert into member values(?,?,?,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,mdto.getId());
			pstmt.setString(2,mdto.getPw());
			pstmt.setString(3,mdto.getName());
			pstmt.setString(4,mdto.getPhone());
			pstmt.setString(5,mdto.getGender());
			pstmt.setString(6,mdto.getHobby());
			
			//▽query문이 insert,update,delete는 executeUpdate
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
		}//try
		
		return result;
	}//memberInsert()
	
	//1명 회원 리스트 메소드(new MemberDto()에만 담는다)
	public MemberDto memberOne(String uid) {
		MemberDto mdto = null;
		try {
			conn=getConnection();
			query="select * from member where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, uid);
			System.out.println("connection : "+uid);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				id=rs.getString("id");
				System.out.println("while id : "+id);
				pw=rs.getString("pw");
				name=rs.getString("name");
				phone=rs.getString("phone");
				gender=rs.getString("gender");
				hobby=rs.getString("hobby");
				mdate=rs.getTimestamp("mdate");
				mdto=new MemberDto(id, pw, name, phone, gender, hobby, mdate);
			}//while
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}//try
		
		return mdto;
	}//memberOne() : 1명 회원정보 가져오기 메소드
	
	
	
	//전체회원리스트 메소드
	public ArrayList<MemberDto> memberAll(){
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		
		try {
			conn=getConnection();
			query="select * from member";
			pstmt = conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				id=rs.getString("id");
				pw=rs.getString("pw");
				name=rs.getString("name");
				phone=rs.getString("phone");
				gender=rs.getString("gender");
				hobby=rs.getString("hobby");
				mdate=rs.getTimestamp("mdate");
				MemberDto mdto = new MemberDto(id, pw, name, phone, gender, hobby,mdate);
				list.add(mdto);
			}//while
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}//try
		
		
		return list;
	}//memberAll()
	
	
	//로그인 체크 메소드
	public MemberDto mloginCheck(String uid,String upw) {
		try {
			conn = getConnection();
			query ="select * from member where id=? and pw=?";
			pstmt =conn.prepareStatement(query);
			pstmt.setString(1, uid);
			pstmt.setString(2, upw);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				id=rs.getString("id");
				pw=rs.getString("pw");
				name=rs.getString("name");
				phone=rs.getString("phone");
				gender=rs.getString("gender");
				hobby=rs.getString("hobby");
				mdate=rs.getTimestamp("mdate");
				mdto = new MemberDto(id,pw,name,phone,gender,hobby,mdate);
			}
			
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
	}//mloginCheck
	
	
	
	
	//▼커넥션 풀 가져오는 메소드
	public Connection getConnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();//커넥션 풀객체 생성
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();
		
		} catch (Exception e) {e.printStackTrace();}
		 
		return connection;
	}//Connection getConnection()
	
}//CLASS : MemberDAO : DAO에서만 데이터 접근
