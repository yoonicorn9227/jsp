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
			button{width: 200px; height: 60px; margin-top: 30px; background:orange;}
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
		<div>
			<h1>회원가입</h1>
			<form name="m_frm" method="post" action="Do_mwrite">
				<table>
					<tr>
						<th>아 이 디</th>
						<td><input type="text" name="id" id="id"></td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><input type="password" name="pw" id="pw"></td>
					</tr>
					<tr>
						<th>회원이름</th>
						<td><input type="text" name="name" id="name"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="phone" id="phone"></td>
					</tr>
					<tr>
						<th>회원성별</th>
						<td>
						<input type="radio" name="gender" id="Male" value="Female">
						<label for="Male">남자</label>
						<input type="radio" name="gender" id="Feale" value="Female">
						<label for="Female">여자</label>
						</td>
					</tr>
					<tr>
						<tr>
						<th>취　　미</th>
						<td>
						<input type="checkbox" name="hobby" id="game" value="game">
						<label for="game">게임</label>
						<input type="checkbox" name="hobby" id="golf" value="golf">
						<label for="golf">골프</label>
						<input type="checkbox" name="hobby" id="run" value="run">
						<label for="run">조깅</label>
						<input type="checkbox" name="hobby" id="cook" value="cook">
						<label for="cook">요리</label>
						<input type="checkbox" name="hobby" id="book" value="book">
						<label for="book">독서</label>
						</td>
					</tr>
					</tr>
				</table>
				<button type="button" id="fbtn">회원가입</button>
				<button type="button" onclick="javascript:history.back()">가입취소</button>
			</form>
		</div>
	</body>
</html>