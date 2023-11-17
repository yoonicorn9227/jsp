<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
		<c:if test="${session_id==null}">
	  	<h1>로그인을 해주세요.</h1>
		  <ul>
		    <li><a href="login.do">로그인</a></li>
		    <li><a href="mwrite.do">회원가입</a></li>
		  </ul>
		</c:if>
		<c:if test="${session_id!=null}">
	  	<h1>${session_name}님 환영합니다.</h1>
		  <ul>
		    <li><a href="bList.do">게시판</a></li>
		    <li><a href="logout.do">로그아웃</a></li>
		    <li><a href="bUpdate.do">회원정보수정</a></li>
		  </ul>
		</c:if>
	 
	
	</body>
</html>