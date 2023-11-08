<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그아웃</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		
	</head>
	<body>
		<%session.invalidate(); %>
		<script>
			alert("로그아웃 되었습니다.");
			location.href="jsp_main.jsp";
		</script>
	</body>
</html>