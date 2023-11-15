<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head> 
		<meta charset="UTF-8">
		<title>로그인</title>
		<style>
			*{margin: 0; padding: 0;}
			div{width: 400px; margin: 30px auto; text-align: center;}
			h1{margin-bottom:30px; }
			table,th,td{border: 1px solid black; border-collapse: collapse;
			font-size: 16px;}
			th,td{width: 200px; height: 40px;}
			button{width: 150px; height: 40px; margin-top: 30px; background: orange;}
		</style>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
			$(function(){
				$("#fbtn").click(function(){
					if($("#id").val().length<1){
						alert("아이디를 입력하세요.");
						$("#id").foucus();
						return false;
					}//if - 아이디 미입력
					if($("#pw").val().length<1){
						alert("비밀번호를 입력하세요.");
						$("#pw").foucus();
						return false;
					}//if - 비밀번호 미입력
					alert("로그인을 진행합니다.");
					l_frm.submit();
				});//#fbtn.click
				
				
			});//제이쿼리 최신
		</script>
		
	</head>
	<body>
		<div>
		<h1>로그인</h1>
		<form name="l_frm" method="post" action="doLogin.do">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" id="id"></td>
				</tr>
				<tr>
					<th>패스워드</th>
					<td><input type="password" name="pw" id="pw"></td>
				</tr>
			</table>
			<button type="button" id="fbtn">로그인</button>
			<a href="index.jsp"><button type="button">메인홈</button></a>
		</form>
		</div>
	</body>
</html>