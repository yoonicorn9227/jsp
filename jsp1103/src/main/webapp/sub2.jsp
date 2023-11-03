<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>forward-param</title>
	</head>
	<body>
		<%
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			
			out.println("아이디 : " + id+"<br>");
			out.println("패스워드 : " + pw+"<br>");
			
		%>
	
	
	</body>
</html>