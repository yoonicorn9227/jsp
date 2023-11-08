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
		<title>mem_list</title>
		<style>
			*{margin: 0; padding: 0}
			h1{margin-bottom: 40px;}
			div{width:1200px; margin: 30px auto; text-align: center; }
			table,th,td{border-collapse: collapse; border: 1px solid black;
			font-size: 16px;}
			th,td{width: 200px; height: 40px; }
			button{width: 200px; height: 45px; margin-top:30px; }
		</style>
	</head>
	<body>
		<div>
			<h1>회원정보</h1>
			<table>
				<tr>
					<th>아이디</th>
					<th>패스워드</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>성별</th>
					<th>취미</th>
					<th>등록일자</th>
				</tr>
				<%
					request.setCharacterEncoding("UTf-8");
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;
					
					String id,pw,name,phone,gender,hobby,mdate;
					
					try{
						//DB연결
						Class.forName("oracle.jdbc.driver.OracleDriver");
						conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
						stmt = conn.createStatement();
						String query="select * from mem";
						rs=stmt.executeQuery(query);
						
					while(rs.next()){
						 id = rs.getString("id");
				         pw = rs.getString("pw");
				         name = rs.getString("name");
				         phone = rs.getString("phone");
				         gender = rs.getString("gender");
				         hobby = rs.getString("hobby");
				         mdate = rs.getDate("mdate")+"";
						
						%>
				<tr>
					<td><%=id%></td>
					<td><%=pw%></td>
					<td><%=name%></td>
					<td><%=phone%></td>
					<td><%=gender%></td>
					<td><%=hobby%></td>
					<td><%=mdate%></td>
				</tr>
					<% 
						}
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
					}
				%>
				
			</table>
			<a href="mem_write.jsp"><button>회원등록</button></a>
		</div>
	
	</body>
</html>