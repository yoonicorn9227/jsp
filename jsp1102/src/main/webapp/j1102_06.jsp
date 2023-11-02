<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp - 선언식</title>
	</head>
	<body>
		<%! //서블릿에서 계산이 되어진 결과값을 리턴해서 가지고 옴.
			//선언식에 사용가능한 전역변수 설정, 메소드 설정 가능
			int a= 0; 
			int b= 0;
			public int sum(int a, int b){
			return a+b;
		}
		
		%> <!-- 선언식 -->
		
		<% 	 a = 10;
			 b= 2;
			out.println(a+b);
		%>
	
		<% out.println(sum(10,2)+"<br>"); %>
		<% out.println(sum(20,10)+"<br>"); %>
		
	
	
	
	</body>
</html>