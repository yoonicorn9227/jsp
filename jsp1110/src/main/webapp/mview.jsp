<%@page import="com.java.www.dto.MemberDto"%>
<%@page import="com.java.www.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
			*{margin: 0; padding: 0;}
			div{width: 600px; margin: 30px auto; text-align: center;}
			h1{margin-bottom:30px; }
			table,th,td{border: 1px solid black; border-collapse: collapse;
			font-size: 16px;}
			th{width: 200px; height: 40px;}
			td{width: 400px;}
			button{width: 150px; height: 40px; margin-top: 30px;}
		</style>
		<script>
			$(function(){
				$("#fbtn").click(function(){
					if($("#id").val().length<2){
						alert("아이디를 입력하셔야 합니다.");
						$("#id").focus();
						return false;
					}//if
					
					alert("회원가입이 되었습니다.")
					m_frm.submit();
				});//#fbtn.click
			});//제이쿼리 최신
		</script>
		
	</head>
	<body>
		<%
			String id = request.getParameter("id");
					
			//1.객체선언 //2.참조변수명.메소드명
			MemberDao mdao = new MemberDao();
			MemberDto mdto = mdao.memberOne(id);
		%>
		<div>
			<h1>[<%=mdto.getName() %>] 회원님 정보보기</h1>
				<table>
					<tr>
						<th>아 이 디</th>
						<td><%=mdto.getId() %></td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><%=mdto.getPw() %></td>
					</tr>
					<tr>
						<th>회원이름</th>
						<td><%=mdto.getName() %></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><%=mdto.getPhone() %></td>
					</tr>
					<tr>
						<th>회원성별</th>
						<td><%=mdto.getGender() %></td>
					</tr>
					<tr>
						<th>취　　미</th>
						<td><%=mdto.getHobby() %></td>
					</tr>
				</table>
				<a href="mupdate.jsp?id=<%=mdto.getId()%>"><button type="button" id="fbtn">회원정보 수정</button></a>
				<a href="mdelete.jsp"><button type="button" id="fbtn">회원정보 삭제</button></a>
				<a href="mlist.jsp"><button type="button">회원정보 리스트</button></a>
		</div>
	</body>
</html>