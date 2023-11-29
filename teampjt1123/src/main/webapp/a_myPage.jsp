<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입-a_signUp.jsp</title>
    <link rel="stylesheet" href="css/a_myPage.css">
   	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <c:if test="${session_id==null}">
		<script>
			alert("로그인을 해야만 접속이 가능합니다.");
			location.href="a_login.do";
		</script>
	</c:if>
    <script>
   $(function(){
		$("#resBtn").click(function(){
			alert("메인페이지 이동합니다.");
			location.href="a_main.do"
		});//#resBtn(메인화면)
		
		$("#MUpdateBtn").click(function(){
			alert("회원수정 페이지로 이동합니다.")
			MUpdateFrm.submit();
		});//MUpdateBtn(회원수정)
		
		
   });//제이쿼리 구문최신
    </script>
</head>
<body>
	<form name="MUpdateFrm" method="post" action="a_MUpdate.do">
	    <table>
			<h1 id="idtitle">[${session_name}] 회원님 정보</h1>
			<tr>
			<th>아 이 디</th>
				<td>${smdto.id}</td>
			</tr>
			<tr>
			<th>패스워드</th>
				<td>${smdto.pw}</td>
			</tr>
			<tr>
			<th>회원이름</th>
				<td>${smdto.name}</td>
			</tr>
			<tr>
			<th>주민번호</th>
				<td>${smdto.p_num}</td>
			</tr>
			<tr>
			<th>휴대전화</th>
				<td>${smdto.phone }</td>
			</tr>
			<th>e-mail</th>
				<td>${smdto.email}</td>
			</tr>
			<tr>
			<th>회원성별</th>
				<td class="radio_change">${smdto.gender}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td class="radio_change">${smdto.region}</td>
			</tr>
			<tr colspaan="2">
				<td colspan="2" id="selBtn">
					<button type="button" id="MUpdateBtn">회원수정</button>
					<button type="button" id="resBtn">메인화면</button>
				</td>
			</tr>
		</form>
	<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
    	<source src="images/main_background.mp4">
    </video>
</body>
</html>
