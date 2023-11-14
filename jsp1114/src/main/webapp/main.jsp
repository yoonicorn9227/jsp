<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		*{text-decoration: none;}
			ul{list-style: none;}
			#not{color:red;}
		</style>
	</head>
	<body>
		<h1>메인페이지</h1>
		<ul>
			<a href="login.do">do.로그인페이지<li></li></a>
			<a href="write.do"><li>do.글쓰기</li></a>
			<a href="mwrite.do"><li>do.회원가입</li></a>
			<hr>
			<h2 id="not">▼직접연결 안함(사용X)</h2>
			<a href="login.jsp"><li>로그인 페이지</li></a>
			<a href="mwrite.jsp"><li>회원가입</li></a>
			<a href="write.jsp"><li>글쓰기</li></a>
		</ul>
	</body>
</html>