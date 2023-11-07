<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>학생성적프로그램</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
			$(function(){
				
			});//제이쿼리 구문 최신
		</script>
		<style>
			table,td{border: 1px solid black; border-collapse: collapse; font-size: 16px;
				text-align: center;
			}
			
			td{width: 150px; height: 40px;}
		
		</style>
	</head>
	<body>
		<h1>학생성적프로그램</h1>
		<table>
			 <%
			 request.setCharacterEncoding("UTF-8");
			 int kor =Integer.parseInt(request.getParameter("kor"));
			 int eng =Integer.parseInt(request.getParameter("eng"));
			 int math =Integer.parseInt(request.getParameter("math"));
			 int total = kor +eng + math;
			 double avg  = Math.round((total/3.0));
			 %>
			<tr>
				<td>학번</td>
				<td><%=request.getParameter("stuNum") %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=request.getParameter("name")%></td>
			</tr>
			<tr>
				<td>국어</td>
				<td><%=request.getParameter("kor") %></td>
			</tr>
		
			<tr>
				<td>영어</td>
				<td><%=request.getParameter("eng") %></td>
			</tr>
		
			<tr>
				<td>수학</td>
				<td><%=request.getParameter("math") %></td>
			</tr>
			<tr>
				<td>합계</td>
				<td><%=total %></td>
			</tr>
			<tr>
				<td>평균</td>
				<td><%=avg %></td>
			</tr>
		
		</table>
	
	
	</body>
</html>