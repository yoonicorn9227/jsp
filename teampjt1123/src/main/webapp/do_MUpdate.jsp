<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>

		<c:if test="${result==1}">
			<script>
				alert("회원정보가 수정 되었습니다.");
				location.href="a_myPage.do";
			</script>
		</c:if>
		<c:if test="${result!=1}">
			<script>
				alert("회원정보가 수정되지 않았습니다. 다시 수정해주세요!");
				location.href="a_MUpdate.do";
			</script>
		</c:if>
	</body>
</html>