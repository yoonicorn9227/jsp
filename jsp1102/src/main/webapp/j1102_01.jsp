<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<% 
			out.print("<h2> 1에서 100까지의 합 </h2>");
		int sum=0;
		for(int i =1; i<=100;i++){
			sum+= i;
			out.print("더할 숫자"+i+"<br>");
		}
			out.print("============================<br>");
			out.print("합계 : " +sum + "<br>");
	
	
	
	%>	
	
	
	
	
	
	
	</body>
</html>