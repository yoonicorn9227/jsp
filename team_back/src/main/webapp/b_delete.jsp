<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>b_delete.jsp</title>
	</head>
	<body>
		<script>
			alert("삭제가 완료되었습니다.");
			location.href="b_list.do?page=${page}";
		</script>
	</body>
</html>