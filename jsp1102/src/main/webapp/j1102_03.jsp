<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp-시크릿트립2</title>
	</head>
	<body>
	<%
		int[] arr={1,2,3,4,5,6,7,8,9,10};
		int sum=0;
		int temp=0;
		for(int i=0;i<arr.length;i++){
			sum+=arr[i];
		}//for
			out.println("<h1>"+sum+"</h1>");
			
		//랜덤으로 숫자 10개 덧셈
 	 	int[] arr2 = new int[10];
		int sum2 = 0;		
		for(int i =0; i<arr2.length;i++){
			arr2[i]=(int)(Math.random()*100); //0~99까지
			sum2 += arr2[i];
			out.println("랜덤숫자 : " +arr2[i]+"&nbsp<br>");
		}
		out.println("<h1>"+sum2+"</h1>");
	
	%>
	
	
	</body>
</html>