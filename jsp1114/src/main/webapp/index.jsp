<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
		<style>
			*{text-decoration: none; }
			h1{color: blue;}
			div{text-align: center;}
			ul{list-style: none;}
		</style>
	</head>
	<body>
		<div>
			<%if(session.getAttribute("session_id")==null){%>
			<h1>▶로그인을 해주세요.◀</h1>
			<ul>
			<a href="login.jsp"><li>로그인</li></a>
			<a href="write.jsp"><li>회원가입</li></a>
			</ul>
			<%}else{ %>
			<h1>[<%=session.getAttribute("session_name") %>] 회원님 환영합니다.</h1>
			<ul>
				<a href="list.jsp"><li>게시판</li></a>
				<a href="logout.jsp"><li>로그아웃</li></a>
				<a href="mupdate.jsp"><li>회원정보수정</li></a>
			</ul>
			<%}%>
		</div>
	</body>
</html>