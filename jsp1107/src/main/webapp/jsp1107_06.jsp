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
		<title>DB연결</title>
		
	</head>
	<body>
		<% 
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			int stuNum=0;
			String name ="";
			int grade=0;
			String email="",phone="",gender="", address="";
			
			
			
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
				stmt = conn.createStatement();
				String query ="select * from stuinfo";
				rs = stmt.executeQuery(query); //100개
				
				while(rs.next()){//rs에 데이터가 있으면
					stuNum = rs.getInt("stunum"); //컬럼명으로 가져온다
					name = rs.getString("name");
					grade = rs.getInt("grade"); //컬럼명으로 가져온다
					email = rs.getString("email"); //컬럼명으로 가져온다
					phone = rs.getString("phone"); //컬럼명으로 가져온다
					gender = rs.getString("gender"); //컬럼명으로 가져온다.
					address = rs.getString("address"); //컬럼명으로 가져온다.
					
					out.println("학번 : "+ stuNum+",이름 : "+name+",학년 : "+grade+",이메일 : "
					+email+",전화번호 : "+phone+",성별 : "+gender+",주소 : "+address+"<br>");
					
				}//while
				
				
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					 if(rs!=null) rs.close();
					 if(stmt!=null) stmt.close();
					 if(conn!=null) conn.close();
				}catch(Exception e2){
					e2.printStackTrace();
				}
			}//try-catch
		%>
	
	
	
	</body>
</html>