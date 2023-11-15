<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EL태그&JSTL태그</title>
	</head>
	<body>
		<h1>아이디 : ${param.id }</h1>
		<h1>아이디 : ${id }</h1>
		<h1>두수를 더하기 : ${param.num1+param.num2}</h1>
		<c:if test="${param.num3%2==0 }">
			<h2>짝수입니다.</h2>
		</c:if>
		<c:if test="${param.num3%2!=0 }">
			<h2>홀수입니다.</h2>
		</c:if>
	</body>
</html>