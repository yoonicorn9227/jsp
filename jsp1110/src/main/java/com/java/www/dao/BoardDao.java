package com.java.www.dao;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDao {

	
	
	
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
		
	
	
	
}//BoardDAO
