<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>결과페이지</title>
	</head>
	<body>
		
		<h2>3.3. jsp 액션태그 param 데이터 전송</h2>
		<h2>ip번호 : <%=request.getParameter("ipParam") %></h2>
		
		<!-- 
		<h2>파라미터로 데이터 전송 결과페이지</h2>
		<h2>ip번호 : <%=request.getParameter("ipAdd") %></h2>
		<hr>
 		-->
		
		<!-- 		주석 
		<h2>form으로 데이터 전송 결과 페이지 </h2>
		<h2>ip번호 : <%=request.getParameter("ip") %></h2>
		-->
		
	</body>
</html>