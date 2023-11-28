package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Stu_boardDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String query, btitle, bcontent, id, bfile;
	Timestamp bdate;
	int bsno, bgroup, bstep, bindent, bhit;

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

}// BoardDao
