<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<% 	session.invalidate(); //모든 세션 삭제
			//response.sendRedirect("jsp1107_01.jsp");
		%>
	
		<script>
			alert("로그아웃 되었습니다.")
			location.href="jsp1107_01.jsp"
		</script>
		
	</body>
</html>