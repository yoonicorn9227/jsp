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
import com.java.www.dto.MemberDto;

public class BoardDao {
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs= null;
	BoardDto bdto = null;
	int bno,bgroup,bstep,bindent,bhit;
	String btitle,bcontent,id,bfile,query;
	Timestamp bdate;
	ArrayList<BoardDto> list = new ArrayList();	
	
	//1.게시글 전체 보내기 - 1개를 보내려면:dto, 여러개 보내려면 ArrayList
	public ArrayList<BoardDto> selectAll(){
		try {
			conn=getConnection();
			query="select * from (select row_number() over(order by bno desc) rnum, a.* from board a)where rnum>=1 and rnum<=20";
			pstmt=conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				bno=rs.getInt("bno");
				btitle=rs.getString("btitle");
				bcontent=rs.getString("bcontent");
				id=rs.getString("id");
				bgroup=rs.getInt("bgroup");
				bstep=rs.getInt("bstep");
				bindent=rs.getInt("bindent");
				bhit=rs.getInt("bhit");
				bdate=rs.getTimestamp("bdate");
				bfile=rs.getString("bfile");
				
				list.add(new BoardDto(bno, btitle, bcontent, id, bgroup, bstep, bindent, bhit, bdate, bfile));
			}//while
			
			
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
		}//try
		
		return list;
	}//selectAll
	
	
	//2.게시글&파일첨부 저장
	public int insertOne(BoardDto bdto2) {
		int result = 1;
		try {
			conn=getConnection();
			query="insert into board values(board_seq.nextval,?,?,sysdate,?,board_seq.currval,0,0,1,?)";
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, bdto2.getBtitle());
			pstmt.setString(2, bdto2.getBcontent());
			pstmt.setString(3, bdto2.getId());
			pstmt.setString(4, bdto2.getBfile());
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}//try
		
		return result;
	}//insertOne()
	
	//3.게시글 1개 가져오기 - select
	public BoardDto selectOne(int bno2) {
		BoardDto bdto = null;
		try {
			conn=getConnection();
			query="select * from board where bno=?";
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, bno2);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				bno=rs.getInt("bno");
				btitle=rs.getString("btitle");
				bcontent=rs.getString("bcontent");
				id=rs.getString("id");
				bdate=rs.getTimestamp("bdate");
				bgroup=rs.getInt("bgroup");
				bstep=rs.getInt("bstep");
				bindent=rs.getInt("bindent");
				bhit=rs.getInt("bhit");
				bfile=rs.getString("bfile");
				
				bdto = new BoardDto(bno, btitle, bcontent, id, bgroup, bstep, bindent, bhit,bdate, bfile);
			}//if
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}//try
		return bdto;
	}//
	
	
	
	
	
	
	//커넥션 풀에서 Connection객체를 가져옴
	public Connection getConnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();
		} catch (Exception e) {e.printStackTrace();}
		return connection;
	}//Connection


	
}//CLASS(BoardDao)
