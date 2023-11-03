<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp표</title>
		
		<style>
			table,th,td{border:1px solid black; border-collapse : collapse;
				text-align: center;
			}
			th,td{width:200px; height: 40px; }
			.back{background: yellow;}
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
		<%for(int i=2; i<10;i++){ //2단에 1,3,5,7,9..
			for(int j=1;j<10;j++){//3단에 1,3,5,7,9...
				if(j%2==0) continue;
		%>
			<tr>
				<td><%=i %></td>
				<td>×</td>
				<% if(j%3==0) {%>
				
				<td class="back"><%=j %></td> <!-- 배경색이 있는것 -->
				
				<%}else{ %>
				
				<td><%=j %></td> <!-- 배경색이 없는것 -->
				
				<%} %>
				
				<td>=</td>
				<td><%=i*j %></td>
			</tr>
		<%}}%>
		
		</table>
	
	
	
	
	</body>
</html>