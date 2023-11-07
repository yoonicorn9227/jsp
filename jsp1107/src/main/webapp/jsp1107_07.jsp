<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>db연결</title>
	</head>
	<body>
	<%
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs = null;
		int bno=0;
		int bgroup=0;
		int bstep=0;
		int bindent=0;
		int bhit=0;
	
		String btitle="",bcontent="",id="",bfile="" ,bdate="";
		
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
			stmt=conn.createStatement();
			String query = "select * from board";
			rs = stmt.executeQuery(query);
			
			while(rs.next()){
				bno = rs.getInt("bno");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				btitle=rs.getString("btitle");
				bcontent=rs.getString("bcontent");
				id=rs.getString("id");
				bfile=rs.getString("bfile");
				bdate=rs.getDate("bdate")+""; //날짜
			
			
			}//while
		} catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null) rs.close();
				if(stmt!=null) rs.close();
				if(conn!=null) rs.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		
	
	
	%>
	
	</body>
</html>