<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디/패스워드 체크</title>
	</head>
	<body>
		<%
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			if(id.equals("admin") && pw.equals("1111")){
				session.setAttribute("session_id", "admin");
				session.setAttribute("session_nicName", "어벤져스");
		
		%>
		<script>
			alert("로그인 되었습니다.")
			location.href="main.jsp"
		</script>
		
		
		
			<% }else{%>
				<script>
					alert("아이디 또는 패스워드가 일치 하지 않습니다. 다시입력하세요!")
					location.href="cLogin.jsp"
				</script>
			
			
			
			<% }%>
	</body>
</html>