<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp-스크립트릿</title>
	</head>
	<body>
		<!-- html 주석 : jsp 프로그래밍 입니다. random 함수를 사용했습니다. -->
		<%-- jsp 주석 : String.format함수를 사용 5자리 결과값출력 --%>
		
		<%
			//랜덤으로 숫자 : 0부터 99999까지의 있는 숫자를 랜덤으로 추출
			//자리수는 5자리 되어야함, 아닌경우는 00001로출력
			
			int num = (int)(Math.random()*100000);
			String str_num=String.format("%05d",num);			
			out.println(str_num+"<br>");
			
			//5자리의 개별숫자의 합을 출력하시오. ex)02487 ->			
			out.println(str_num.charAt(0)-'0'+"<br>");
			out.println(str_num.charAt(1)-'0'+"<br>");
			out.println(str_num.charAt(2)-'0'+"<br>");
			out.println(str_num.charAt(3)-'0'+"<br>");
			out.println(str_num.charAt(4)-'0'+"<br>");
			out.println("합계 : " + (
					(str_num.charAt(0)-'0')+(str_num.charAt(1)-'0')+
					(str_num.charAt(2)-'0')+(str_num.charAt(3)-'0')+
					(str_num.charAt(4)-'0')
					
					));
			
			//소문자 a-> A a:97, A:65, 0:48
			//대소문자 변경 +-32
			//숫자 : 0(아스키코드 : 48) 아스키코드(49-48=1) // char(숫자)-char(0)= 숫자(int)
		
		%>
	</body>
</html>