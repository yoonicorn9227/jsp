<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp-스크립트릿5</title>
	</head>
	<body>
	<%
			for(int i =1;i<=9;i++){
				out.println("2×"+i+" = "+(2*i)+"<br>");
		
				
				
		//int i = 0;
		//while(true){
			//i++;
			//out.println("2×"+i+" = "+(2*1)+"<br>");
	%>
	
	----------------------------<br>
	
	<% //if(i>=9) break;
		
		}%>
	
	
	
	<%
		int a=0; //DB에서 다시 받아옴
		if(a%2==1){ //로그인버튼을 클릭했을때 아이디, 패스워드가 일치하면 1 , 일치하지 않으면 0
	%>
		<h2>홍길동님 환영합니다.</h2>
	
	
	<%} else { %>
		<h2> 아이디 또는 패스워드가 일치하지 않습니다, 다시입력하세요!</h2>
	
	
	<% } %>
		


	</body>
</html>