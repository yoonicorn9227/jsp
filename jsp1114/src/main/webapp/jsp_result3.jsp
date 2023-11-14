<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL태그 결과값</title>
	</head>
	<body>
		<h2>아이디 : ${param.id }</h2>
		<h2>이　름 : ${param.name }</h2>
	<!-- response.sendRedirect()는 데이터를 reset해서 페이지로 넘겨준다  -->
	<%-- <%response.sendRedirect("jsp_result4.jsp?result=1"); %>  --%>
	<%
		//RequestDispatcher 객체를 생성하고 dispatcher.forward(request,response)
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp_result4.jsp?result=1");
		dispatcher.forward(request,response);
	%>
		
		
	</body>
</html>