package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.Stu_boardDto;

public class Stu_boardDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Stu_boardDto sbdto;
	ArrayList<Stu_boardDto> list = new ArrayList<Stu_boardDto>();
	String query, btitle, bcontent, id, bfile;
	Timestamp bdate;
	int bsno, bgroup, bstep, bindent, bhit;
	int listCount;
	int result;

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

	// 1.게시글 전체 가져오기
	public ArrayList<Stu_boardDto> dao_Blist(int startRow, int endRow) {
		try {
			conn = getConnection();
			query = "select *from (select row_number() over(order by bgroup desc, bstep asc) rnum, a.*from stu_board a) where rnum between ? and ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bsno = rs.getInt("bsno");
				btitle = rs.getString("btitle");
				bcontent = rs.getString("bcontent");
				bdate = rs.getTimestamp("bdate");
				id = rs.getString("id");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				bfile = rs.getString("bfile");
				list.add(new Stu_boardDto(bsno, btitle, bcontent, bdate, id, bgroup, bstep, bindent, bhit, bfile));
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
	}// dao_Blist() 게시글 전체 메소드 : Select

	// 1-2.게시글 전체개수
	public int dao_ListCount() {
		try {
			conn = getConnection();
			query = "select count(*) listCount from stu_board";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				listCount = rs.getInt("listCount");
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
		return listCount;
	}// dao_ListCount() - 게시글 전체개수 메소드 : Select(Count)

	// 2.게시글 1개 가져오기
	public Stu_boardDto dao_selectOne(int bsno2) {
		try {
			conn = getConnection();
			query = "select * from stu_board where bsno=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bsno2);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bsno = rs.getInt("bsno");
				btitle = rs.getString("btitle");
				bcontent = rs.getString("bcontent");
				bdate = rs.getTimestamp("bdate");
				id = rs.getString("id");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				bfile = rs.getString("bfile");
				sbdto = new Stu_boardDto(bsno, btitle, bcontent, bdate, id, bgroup, bstep, bindent, bhit, bfile);
			} // if
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		return sbdto;
	}// dao_selectOne() - 게시글 1개 보기 메소드 : Select

	// 3.게시글 삭제
	public int dao_Bdelete(int bsno2) {
		try {
			conn = getConnection();
			query = "delete from Stu_board where bsno=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bsno2);
			result = pstmt.executeUpdate();
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
	}// dao_Bdelete() - 게시글 삭제 메소드 : Delete

	//4.게시글 쓰기
	
	
	
}// BoardDao
