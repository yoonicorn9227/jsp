<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table,th,td{border : 1px solid black; border-collapse : collapse;
			font-size : 20px; text-align : center 
			}
			table{width  : 200px; margin : 50px auto; }
			th, td{width : 100px; height:40px; }
		
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>순서</th>
				<th>결과값</th>
			</tr>
		<%
			int sum=0;
			for(int i=1; i<=10; i++){
				sum+=i;
		%>
			
			<tr>
				<td><%=i %></td>
				<td><%=sum %></td>
			</tr>
		
		<%}%>
		</table>
	</body>
</html>