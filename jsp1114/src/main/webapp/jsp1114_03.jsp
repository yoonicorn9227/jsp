<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL태그(fmt)</title>
	</head>
	<body>
		<jsp:useBean id="now" class="java.util.Date"/>
		<h1> 패턴이 없을때 :${now }</h1>
		<h1><fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/></h1>
	</body>
</html>