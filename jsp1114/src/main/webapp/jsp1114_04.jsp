<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>request</title>
	</head>
	<body>
		<form name="frm" method="get" action="jsp_result3.jsp">
			<label>아이디</label>
			<input type="text" name="id" id="id">
			<br>
			<label>이름</label>
			<input type="text" name="name" id="name">
			<br>
			<input type="submit"  value="전송">
		</form>
	</body>
</html>