<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>거절페이지</title>
	<style> h1{color:red}</style>
	</head>
	<body>
		<h1>담배, 주류 판매불가</h1>
		<h2>현재나이 : <%=request.getParameter("age") %></h2>
		<h2>성  명 : <%=request.getParameter("name") %></h2>
		<a href="j1103_02.jsp">페이지 이동</a>
		
		
		
		
		
		
	</body>
</html>