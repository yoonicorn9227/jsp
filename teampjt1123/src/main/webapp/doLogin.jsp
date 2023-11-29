<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 페이지</title>
	</head>
	<body>
		<c:if test="${result==1}">
			<script>
				alert("로그인 되었습니다.");
				location.href="a_main.do";
			</script>
		</c:if>
		<c:if test="${result!=1}">
			<script>
				alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
				location.href="a_login.do";
			</script>
		</c:if>
	</body>
</html>