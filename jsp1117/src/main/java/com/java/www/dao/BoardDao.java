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
	BoardDto bdto = null;
	ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	String query, id, btitle, bcontent, bfile;
	int bno, bgroup, bstep, bindent, bhit;
	Timestamp bdate;
	int result, listCount;

	// ★커넥션 풀에서 connection 객체가져오기
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
	}// getConnection()

	// 1.게시글 전체가져오기,검색 가져오기 - Select
	public ArrayList<BoardDto> bList(String bcategory, String bsearch, int startRow, int endRow) {
		try {
			conn = getConnection();
			//--
			if(bcategory == null) {
				query="select * from ( select row_number() over(order by bgroup desc,bstep asc) rnum, a.* from board a ) where rnum between ? and ?";
				pstmt = conn.prepareStatement(query);
				//1,2
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
			}else if(bcategory.equals("all")) {
				query ="select * from ( select row_number() over(order by bgroup desc,bstep asc) rnum, a.* from board a where btitle like '%'||?||'%' or bcontent like '%'||?||'%') where rnum between ? and ? ";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, bsearch);
				pstmt.setString(2, bsearch);
				pstmt.setInt(3, startRow);
				pstmt.setInt(4, endRow);
				
			}else if(bcategory.equals("btitle")) {
				query ="select * from ( select row_number() over(order by bgroup desc,bstep asc) rnum, a.* from board a where btitle like '%'||?||'%') where rnum between ? and ?";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, bsearch);
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, endRow);
				
			}else {
				query ="select * from ( select row_number() over(order by bgroup desc,bstep asc) rnum, a.* from board a where bcontent like '%'||?||'%') where rnum between ? and ?";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, bsearch);
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, endRow);
				
			}
			//-----
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bno = rs.getInt("bno");
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
				// 확인용
			System.out.println("BoardDao Blist :  " + list.get(0).getBno());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} // try

		return list;
	}// bList

	// 2. 게시글 1개 가져오기 메소드
	public BoardDto selectOne(int bno2) {
		try {
			conn = getConnection();
			query = "select * from board where bno=?";
			pstmt = conn.prepareStatement(query);
			// 1,2
			pstmt.setInt(1, bno2);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bno = rs.getInt("bno");
				System.out.println("BoardDao bno : " + bno);
				btitle = rs.getString("btitle");
				bcontent = rs.getString("bcontent");
				bdate = rs.getTimestamp("bdate");
				id = rs.getString("id");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				bfile = rs.getString("bfile");
				bdto = new BoardDto(bno, btitle, bcontent, bdate, id, bgroup, bstep, bindent, bhit, bfile);
			} // if
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} // try

		return bdto;
	}// selectOne()

	// 3.게시글 쓰기 - Insert
	public int bInsert(BoardDto bdto2) {
		try {
			conn = getConnection();
			query = "insert into board values(board_seq.nextval,?,?,sysdate,?,board_seq.currval,0,0,1,?)";
			pstmt = conn.prepareStatement(query);
			// 1,2
			pstmt.setString(1, bdto2.getBtitle());
			pstmt.setString(2, bdto2.getBcontent());
			pstmt.setString(3, bdto2.getId());
			pstmt.setString(4, bdto2.getBfile());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} // try

		return result;
	}// int bInsert()

	// 4. 게시글 수정 메소드 - update
	public int bUpdate(BoardDto bdto2) {
		try {
			conn = getConnection();
			query = "update board set btitle=?, bcontent=?, bdate=sysdate,bfile=? where bno=?";
			pstmt = conn.prepareStatement(query);
			// 1,2
			pstmt.setString(1, bdto2.getBtitle());
			pstmt.setString(2, bdto2.getBcontent());
			pstmt.setString(3, bdto2.getBfile());
			pstmt.setInt(4, bdto2.getBno());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} // try

		return result;
	}// int bUpdate(BoardDto bdto2)

	// 5.게시글 삭제 - delete
	public int bDelete(int bno2) {
		try {

			conn = getConnection();
			query = "delete board where bno=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bno2);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null)pstmt.close();
				if (conn != null)conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} // try

		return result;
	}// int bDelete()

	
	// 6. 전체게시글수,검색게시글수 - select
	public int listCount(String bcategory, String bsearch) {
		try {
			conn = getConnection();

			// list
			if (bcategory == null) {
				query = "select count(*) listCount from board";
				pstmt = conn.prepareStatement(query);
			} else if (bcategory.equals("all")) {
				query = "select count(*) listCount from board where btitle like '%'||?||'%' or bcontent like '%'||?||'%'";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, bsearch);
				pstmt.setString(2, bsearch);
			} else if (bcategory.equals("btitle")) {
				query = "select count(*) listCount from board where btitle like '%'||?||'%'";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, bsearch);
			} else {
				query = "select count(*) listCount from board where bcontent like '%'||?||'%'";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, bsearch);
			}//if
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				listCount = rs.getInt("listCount");
				System.out.println(" listCount 수 : " + listCount);
			}//if

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}//
		} //try
		return listCount;
	}// listCount

	//7.조회수 증가 메소드 - update
	public void bhitUp(int bno2) {
		try {
			conn = getConnection();
			query = "update board set bhit = bhit+1 where bno=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bno2);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}//
		} //try
	}//bhit
	
	//8. 답글달기 - Insert
	public int bReply(BoardDto bdto2) {
		try {
			System.out.println("Dao_bReply bgroup: "+bdto2.getBgroup());
			conn = getConnection();
			query = "insert into board values (board_seq.nextval,?,?,sysdate,?,?,?,?,1,?)";
			pstmt = conn.prepareStatement(query);
			//1,2,
			pstmt.setString(1, bdto2.getBtitle());
			pstmt.setString(2, bdto2.getBcontent());
			pstmt.setString(3, bdto2.getId());
			pstmt.setInt(4, bdto2.getBgroup()); //부모의 bgroup번호
			pstmt.setInt(5, bdto2.getBstep()+1); //부모의 bstep+1
			pstmt.setInt(6, bdto2.getBindent()+1); //부모의 bindent+1
			pstmt.setString(7, bdto2.getBfile());
			result = pstmt.executeUpdate();
			System.out.println("Dao_bReply result: " +result);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}//
		return result;
	}//bReply
	
	//bstep 1증가 - update
	public void bstepUp(int bgroup2, int bstep2) {
		try {
			conn = getConnection();
			query = "update board set bstep = bstep+1 where bgroup=? and bstep>?";
			pstmt = conn.prepareStatement(query);
			//1,2
			pstmt.setInt(1, bgroup2);
			pstmt.setInt(2, bstep2);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}//bstepUp()
		
	}//bstepUp
}// CLASS(BoardDao-1117)
