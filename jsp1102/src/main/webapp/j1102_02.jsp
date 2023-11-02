<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jsp-스트립트릿</title>
	<style>
		table{width:400px; margin:50px auto;}
		th{width:80px; height:40px}
		table,th,td{text-align : center;
		border : 1px solid black; border-collapse: collapse;}
	</style>
	</head>
	<body>
		<table>
			<tr>
				<th>단</th>
				<th>×</th>
				<th>숫자</th>
				<th>=</th>
				<th>결과값</th>
			</tr>
			<%
				//구구단 출력
				for(int i=2;i<=9;i++){
					for(int j=1 ;j<=9; j++){
						
			%>
			<tr>
				<td><%=i %></td>
				<td>×</td>
				<td><%out.println(j); %></td>
				<td>=</td>
				<td><%out.println(i*j);%></td>
			</tr>
		
			<% 
					}//for2
				}//for1
			%>	
		</table>
		
	</body>
</html>