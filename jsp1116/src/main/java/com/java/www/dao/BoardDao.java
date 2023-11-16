package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.BoardDto;

public class BoardDao {
	//변수선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BoardDto bdto = null;
	ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	String query, id, btitle, bcontent, bfile;
	int bno, bgroup, bstep, bindent, bhit;
	Timestamp bdate;
	int result;
	
	// ★커넥션 풀에서 connection 객체가져오기
	public Connection getConnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();
		} catch (Exception e) {e.printStackTrace();}
		
		return connection;
	}// getConnection()

	// 1.게시글 전체 가져오기 : ArrayList활용
	public ArrayList<BoardDto> bListSelectAll() {
		try {
			conn = getConnection();
			query = "select * from(select row_number() over(order by bgroup desc) rnum, a.*from board a)where rnum between 1 and 10";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bno = rs.getInt("bno");
				//System.out.println("rsnext : " + bno);
				btitle = rs.getString("btitle");
				bcontent = rs.getString("bcontent");
				bdate = rs.getTimestamp("bdate");
				id = rs.getString("id");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				bfile = rs.getString("bfile");
				list.add(new BoardDto(bno, btitle, bcontent, bdate, id, bgroup, bstep, bindent, bhit, bfile));
			} // while
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		return list;
	}// bListSelectAll()
	
	
	
	
	//2. 게시글 저장 bInsert
	public int bInsert(BoardDto bdto2) { //bdto2 4개의 컬럼이 태워서 왔음
		try {
			btitle = bdto2.getBtitle();
			System.out.println("dao bInsert : "+btitle);
			id=bdto2.getId();
			bcontent=bdto2.getBcontent();
			bfile=bdto2.getBfile();
			System.out.println("dao bfile : " + bfile );
			
			
			conn=getConnection();
			query="insert into board values(board_seq.nextval,?,?,sysdate,?,board_seq.currval,0,0,1,? )";
			pstmt=conn.prepareStatement(query);
			// 쿼리문 물음표값에 들어갈 값 설정
			pstmt.setString(1, btitle);
			pstmt.setString(2, bcontent);
			pstmt.setString(3, id);
			pstmt.setString(4, bfile);
			
			result = pstmt.executeUpdate(); //insert,update,delete
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		return result;
	}//bInsert()
	
	//3.게시글 1개 가져오기
	public BoardDto bSelectOne(int bno2) {
		try {
			conn=getConnection();
			query="select * from board where bno=?";
			//1
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,bno2);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				bno=rs.getInt("bno");
				System.out.println("Board bno : " +bno);
				btitle=rs.getString("btitle");
				bcontent=rs.getString("bcontent");
				bdate=rs.getTimestamp("bdate");
				id=rs.getString("id");
				bgroup=rs.getInt("bgroup");
				bstep=rs.getInt("bstep");
				bindent=rs.getInt("bindent");
				bhit=rs.getInt("bhit");
				bfile=rs.getString("bfile");
				bdto=new BoardDto(bno, btitle, bcontent, bdate, id, bgroup, bstep, bindent, bhit, bfile);
			}//if
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		return bdto;
	}//bSelectOne()

	public int doBUpdate(BoardDto bdto2) {
		try {
			conn=getConnection();
			query="update board set btitle=?,bcontent=?,bdate=sysdate,bfile=? where bno=?";
			pstmt=conn.prepareStatement(query);
			//1,2
			pstmt.setString(1, bdto2.getBtitle());
			System.out.println("doBUpdate btitle : "+bdto2.getBtitle());
			pstmt.setString(2, bdto2.getBcontent());
			pstmt.setString(3, bdto2.getBfile());
			pstmt.setInt(4, bdto2.getBno());
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		
		return result;
	}//doBUpdate()
	
//4.게시글 수정 - doBUpdate







}// CLASS(BoardDao 1116)
