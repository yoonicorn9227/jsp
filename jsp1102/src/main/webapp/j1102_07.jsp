<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp-표현식</title>
		<style>
			table,th,td{border : 1px solid black; border-collapse : collapse;
			font-size : 20px; text-align : center 
			}
			table{width  :500px; margin : 50px auto; }
			th, td{width : 100px; height:40px; }
		
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
			
			<%for(int i=2;i<=9;i++){
				for(int j=1;j<=9;j++){
				%>
				<tr>
					<td><%=i %></td>
					<td>*</td>
					<td><%=j %></td>
					<td>=</td>
					<td><%= (i*j) %></td>
				</tr>
			<%}}%>
			
		</table>
	
	
	
	
	</body>
</html>