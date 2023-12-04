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
import com.java.www.dto.EcommentDto;

public class EventDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BoardDto bdto;
	ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	int bno, bgroup, bstep, bindent, bhit;
	String btitle, bcontent, id, bfile, query;
	Timestamp bdate;
	int result, listCount;
	int cno;
	String cpw, ccontent;
	Timestamp cdate;

	// ★커넥션풀에서 Connection객체 가져오기
	public Connection getConnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}// getConnection

	// 1.게시글 전체 가져오기
	public ArrayList<BoardDto> selectAll() {
		try {
			conn = getConnection();
			query = "select * from (select row_number() over (order by bgroup desc,bstep asc) rnum, a.* from board a) where rnum between ? and ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, 1);
			pstmt.setInt(2, 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bno = rs.getInt("bno");
				System.out.println("EvnetDao bno : " + bno);
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
	}// selectAll

	//2. 게시글 1개 가져오기
	public BoardDto selectOne(int bno2) {
		try {
			conn = getConnection();
			query = "select * from board where bno=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bno2);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bno = rs.getInt("bno");
				System.out.println("EvnetDao bno : " + bno);
				btitle = rs.getString("btitle");
				bcontent = rs.getString("bcontent");
				bdate = rs.getTimestamp("bdate");
				id = rs.getString("id");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				bfile = rs.getString("bfile");
				bdto=new BoardDto(bno, btitle, bcontent, bdate, id, bgroup, bstep, bindent, bhit, bfile);
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
		return bdto;
	}//selectOne()

	//3.하단댓글 모두 가져오기
	public ArrayList<EcommentDto> commSelectAll(int bno2) {
		ArrayList<EcommentDto> clist = new ArrayList<EcommentDto>();
		try {
			conn = getConnection();
			query = "select * from ecomment where bno=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bno2);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cno = rs.getInt("cno");
				System.out.println("EvnetDao cno : " + cno);
				bno = rs.getInt("bno");
				id = rs.getString("id");
				cpw = rs.getString("cpw");
				ccontent = rs.getString("ccontent");
				cdate = rs.getTimestamp("cdate");
				clist.add(new EcommentDto(cno, bno, id, cpw, ccontent, cdate));
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
		return clist;
	}//commSelectAll()

}// EventDao
