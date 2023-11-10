<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.java.www.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.www.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <%if(session.getAttribute("session_id")==null){%>
		    <script>    
		    	alert("로그인을 하셔야 접근이 가능합니다.");
		    	location.href="mlogin.jsp";
		    </script>
	  	<%}%> 
			<meta charset="UTF-8">
			<title>회원전체리스트</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
			*{margin: 0; padding: 0; text-decoration: none;}
			div{width: 1000px; margin: 30px auto; text-align: center;}
			h1{margin-bottom:30px; }
			table,th,td{border: 1px solid black; border-collapse: collapse;
			font-size: 16px;}
			th,td{width: 200px; height: 40px;}
			button{width: 200px; height: 60px; margin-top: 30px;}
			th{background: lightgray;}
		</style>
	</head>
	<body>
		<div>
			<table>
				<tr>
					<th>아 이 디</th>
					<th>패스워드</th>
					<th>회원이름</th>
					<th>성　별</th>
					<th>가입일자</th>
				</tr>
				
				<%
				SimpleDateFormat sdf= new SimpleDateFormat("YYYY-MM-dd");
				MemberDao mdao = new MemberDao(); //객체생성(DAO객체에서 메소드 가져오기)
				//전체회원 리스트 가져오기
				ArrayList<MemberDto> list = mdao.memberAll();
				MemberDto mdto = null;
				for(int i=0;i<list.size();i++){
					mdto=list.get(i);
					mdto.getId();
					mdto.getPw();
					mdto.getName();
					mdto.getPhone();
					mdto.getGender();
					mdto.getHobby();
					mdto.getMdate();
				%>
				<tr>
					<td><a href="mUpdate.jsp"><%=mdto.getId() %><a></a></td>
					<td><%=mdto.getPw() %></td>
					<td><%=mdto.getName() %></td>
					<td><%=mdto.getGender() %></td>
					<td><%=mdto.getMdate()%></td>
				</tr>
				<% }%>
			</table>
			<a href="mwrite.jsp"><button type="button">회원추가</button></a>
			<a href="mindex.jsp"><button type="button">메인홈</button></a>
		</div>
	</body>
</html>