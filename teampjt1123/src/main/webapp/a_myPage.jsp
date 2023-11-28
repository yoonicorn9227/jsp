<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입-a_signUp.jsp</title>
    <link rel="stylesheet" href="css/a_myPage.css">
    <c:if test="${session_id=='aaa'}">
		<script>
			alert("로그인을 해야만 접속이 가능합니다.");
			location.href="a_login.do";
		</script>
	</c:if>
   	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
   $(function(){
		$(".resBtn").click(function(){
			alert("회원가입 페이지로 이동합니다.");
			location.href="a_main.jsp"
		});//#회원가입
   });
    </script>
</head>
<body>
	<form name="signFrm" method="post" action="회원가입 처리 페이지 URL">
	    <table>
			<h1 id="idtitle">회원정보</h1>
			<tr>
			<th>아 이 디</th>
				<td>admin</td>
			</tr>
			<tr>
			<th>패스워드</th>
				<td>****</td>
			</tr>
			<tr>
			<th>회원이름</th>
				<td>홍길동</td>
			</tr>
			<tr>
			<th>주민번호</th>
				<td>920207-1234567</td>
			</tr>
			<tr>
			<th>휴대전화</th>
				<td>010-1234-5678</td>
			</tr>
			<th>e-mail</th>
				<td>qwer123@email.com</td>
			</tr>
			<tr>
			<th>회원성별</th>
				<td class="radio_change">남자</td>
			</tr>
			<tr>
				<th>주소</th>
				<td class="radio_change">서울</td>
			</tr>
			<tr colspaan="2">
				<td colspan="2" id="selBtn">
					<button type="button" class="subBtn">회원수정</button>
					<button type="button" class="resBtn">메인화면</button>
				</td>
			</tr>
	</form>
	<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
    	<source src="images/main_background.mp4">
    </video>
</body>
</html>
