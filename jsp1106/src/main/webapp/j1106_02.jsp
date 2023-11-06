<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cookie 쿠키생성</title>
	</head>
	<body>
		<%
			//쿠키생성
			Cookie ck1 = new Cookie("pop1","open");
			Cookie ck2 = new Cookie("nickName","hong1");
			
			//쿠키 시간설정
			ck1.setMaxAge(60*10);//60초 * 10 = 10분
			ck2.setMaxAge(60*60*24);//60초 * 60분 * 24시간 = 1일
			
			//로컬컴퓨터 저장
			response.addCookie(ck1);
			response.addCookie(ck2);
		%>
	
		<h1>쿠키를 생성했습니다.</h1>
		<a href="cookie_list.jsp">쿠키 생성확인</a>
		
		
		
	</body>
</html>