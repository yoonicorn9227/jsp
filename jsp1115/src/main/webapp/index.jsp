<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<c:if test="${session_id == null }">
			<h1>▶로그인을 해주세요.◀</h1>
			<ul>
			<a href="login.do"><li>로그인</li></a>
			<a href="write.do"><li>회원가입</li></a>
			</ul>
		</c:if>
		<c:if test="${session_id != null}">
			<h1>홍길동 회원님 환영합니다.</h1>
			<ul>
				<a href="list.do"><li>게시판</li></a>
				<a href="logout.do"><li>로그아웃</li></a>
				<a href="update.do"><li>회원정보수정</li></a>
			</ul>
		</c:if>
		</div>
	</body>
</html>