<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 -doMSignUp</title>
	</head>
	<body>
		<c:if test="${result==1 }">
			<script>
				alert("회원가입이 완료되었습니다.٩(´▽`)۶");
				location.href="a_login.do"
			</script>
		</c:if>
		<c:if test="${result!=1}">
			<script>
				alert("회원가입이 되지 않았습니다.다시 가입 해주세요.");
				location.href="a_signUp.do";
			</script>
		</c:if>
	</body>
</html>