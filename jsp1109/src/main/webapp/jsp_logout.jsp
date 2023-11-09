<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그아웃</title>
	</head>
<body>
	<%session.invalidate(); //session 모두 삭제
		//session.removeAttribute("session_id"); //session 1개삭제
	%>
	<script>
		alert("로그아웃 되었습니다.");
		location.href="jsp_main.jsp";
	</script>
</body>
</html>