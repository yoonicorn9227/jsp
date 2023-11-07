<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 확인</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
			$(function(){
				
			});//제이쿼리 구문 최신
		</script>
	</head>
	<body>
		<% 
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			session.setAttribute("session_id",id);
			session.setAttribute("session_nicName","어벤져스");
		
			if(id.equals("admin")&& pw.equals("1111")){ //성공할 경우
				session.setAttribute("session_id",id);
				session.setAttribute("session_nicName","어벤져스");
			%>
			<script>
				alert("로그인이 되었습니다.")
				location.href="../layout/main.jsp";
			</script>
			<%}else{ //실패할 경우 %>
				<script>
					alert("아이디 또는 패스워드가 일치하지 않습니다. 다시로그인 해주세요!");
					location.href="login.jsp";
				</script>
			<%} %>
	
	
	
	
	</body>
</html>