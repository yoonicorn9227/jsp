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
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BoardDto bdto;
	ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	String query, btitle, bcontent, id, bfile;
	Timestamp bdate;
	int bno,bgroup, bstep, bindent, bhit, result;
	int listCount;
	
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

	// 1.게시판 전체가져오기 - select
	public ArrayList<BoardDto> n_listSelect(int startRow, int endRow) {
		try {
			conn=getconnection();
			query= "select * from (select row_number() over(order by bgroup desc, bstep asc) rnum,a.* from board a) where rnum between ? and ?";
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				bno=rs.getInt("bno");
				btitle=rs.getString("btitle");
				bcontent=rs.getString("bcontent");
				bdate = rs.getTimestamp("bdate");
				id=rs.getString("id");
				bgroup=rs.getInt("bgroup");
				bstep=rs.getInt("bstep");
				bindent=rs.getInt("bindent");
				bhit=rs.getInt("bhit");
				bfile=rs.getString("bfile");
				list.add(new BoardDto(bno, btitle, bcontent, bdate, id, bgroup, bstep, bindent, bhit, bfile));
			}//while
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null)pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		} // try
		return list;
	}//n_listSelect()

	//게시글 전체갯수
	public int nListCount() {
		try {
			conn=getconnection();
			query = "select count(*) listCount from board";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				listCount = rs.getInt("listCount");
				System.out.println("Dao nListCount : "+listCount);
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
		return listCount;
	}//nListCount()

}// BoardDao
