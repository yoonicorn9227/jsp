<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>메인페이지</title>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<style>
		*{text-decoration: none;}
	</style>
	</head>
	<body>
			
		<%if(session.getAttribute("session_id")==null){%>
		<h1>로그인 해주세요</h1>
		<ul>
			<li><a href="mlogin.jsp">로그인</a></li>
			<li><a href="mwrite.jsp">회원가입</a></li>
		</ul>
		<% }else{%>
		<h1><%=session.getAttribute("session_name") %> 회원님 환영합니다</h1>
		<ul>
			<li><a href="mlogout.jsp">로그아웃</a></li>
			<li><a href="mupdate.jsp">회원정보수정</a></li>
			<li><a href="mlist.jsp">회원전체리스트</a></li>
		</ul>
		<% }%>
				
		
	</body>
</html>