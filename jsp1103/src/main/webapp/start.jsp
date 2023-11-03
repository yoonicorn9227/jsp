<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
		<jsp:forward page="sub2.jsp" >
			
			<jsp:param value="aaa" name="id"/>
			<jsp:param value="1111" name="pw"/>
		
		</jsp:forward>
	
	</body>
</html>