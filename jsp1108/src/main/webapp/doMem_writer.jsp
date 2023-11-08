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
		<title>회원정보 저장</title>
		</head>
	<body>
		
		
		<%
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String gender =request.getParameter("gender");
			String phone = request.getParameter("phone");
			String[] hobbys = request.getParameterValues("hobby");
			String hobby="";	
			for(int i =0; i<hobbys.length;i++){
				if(i==0) hobby = hobbys[i];
				else hobby +=","+hobbys[i];
			}//for
		
					Connection conn =null;
					Statement stmt = null;
					ResultSet rs = null;
					//insert : rs 필요없음
					try{
						Class.forName("oracle.jdbc.driver.OracleDriver");
						conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
						stmt = conn.createStatement();
						String query="insert into mem values ('"+id+"','"+pw+"','"+name+"','"+phone+"','"+gender+"','"+hobby+"',sysdate)";
						int result=stmt.executeUpdate(query); //insert, update, delete | 리턴값이 int | 성공하면 : 1 실패하면 : -1
						//stmt.executeQuery(query); //select
		%>
					<script>
						alert("회원정보가 저장되었습니다.");
						location.href="mem_list.jsp"
					
					</script>	
						
						
						
							
						
		<% 
					}catch(Exception e) {
						e.printStackTrace();
					} finally{
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