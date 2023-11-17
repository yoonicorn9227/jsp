<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>메인페이지</title>
		<style>
			*{text-decoration: none; }
			div{text-align: center;}
			ul{list-style: none;}
			span{color:blue}
			#mem_c{color:#03c75a;}
		</style>
	</head>
	<body>
		<div>
			<c:if test="${session_id==null}">
			 <h1><i class="fa fa-instagram" aria-hidden="true"></i> 로그인을 해주세요. <i class="fa fa-instagram" aria-hidden="true"></i></h1>
			  <ul>
			   <a href="login.do"><li>로그인</li></a>
			   <a href="memInsert.do"><li>회원가입</li></a>
			  </ul>
			</c:if>
			<c:if test="${session_id!=null}">
			 <h1>
			<span id="mem_c"><i class="fa fa-user" aria-hidden="true"></i></span>
			[<span>${session_name}</span>] 회원님 환영합니다.</h1>
			  <ul>
				<a href="bList.do"><li>게시판</li></a>
				<a href="logout.do"><li>로그아웃</li></a>
				<a href="memUpdate.do"><li>회원정보수정</li></a>
			  </ul>
			</c:if>
		</div>
	</body>
</html>