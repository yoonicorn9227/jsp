<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>EL태그</title>
	</head>
	<body>
	<%
		session.setAttribute("session_nicName", "길동쓰");
	%>
	<h1>form</h1>
		<form name="frm" method="get" action="jsp_result.jsp">
			<label>아이디</label>
			<input type="text" name="id" id="id">
			<br>
			<label>이름</label>
			<input type="text" name="name" id="name">
			<br>
			<label>숫자1</label>
			<input type="text" name="num1">
			<br>
			<label>숫자2</label>
			<input type="text" name="num2">
			<br>
			<label>취미</label>
			<input type="checkbox" name="hobby" id="game" value="game">
			<label for="game">게임</label>
			<input type="checkbox" name="hobby" id="golf" value="golf">
			<label for="golf">골프</label>
			<input type="checkbox" name="hobby" id="run" value="run">
			<label for="run">독서</label>
			<br>
			<input type="submit" value="전송">
		</form>
		
	</body>
</html>