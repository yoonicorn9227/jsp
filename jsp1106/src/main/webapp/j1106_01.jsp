<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터 전송 3가지 방법</title>
	</head>
	<body>
		<h2>3. jsp 액션태그 param 데이터 전송</h2>
		<jsp:forward page="result.jsp">
			<jsp:param name="ipParam" value="<%=request.getRemoteAddr() %>" />
		</jsp:forward>
		
		<hr>
		<h2>2. 파라미터 데이터 전송</h2>
		<a href="result.jsp?ipAdd=<%=request.getRemoteAddr()%>">다음(a태그)</a>
		
		<hr>
		
		<h2>1.form으로 데이터 전송</h2>
		<form method="post" name="frm" action="result.jsp">
		
			<input type="hidden" name="ip" id="ip" value="<%=request.getRemoteAddr() %>">
			<input type="submit" value="다음">
		</form>
		
		
		
		
	</body>
</html>