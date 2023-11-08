<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script >
			$(function(){
				$("#fbtn").click(function(){
					//alert($("#id").val());
					//alert($("#pw").val());
					alert("입력한 정보를 저장합니다.");
					$("#id").val()
					$("#pw").val()
					mfrm.submit();
				});//#fbtn.click
			});//제리쿼리 구문 최신
		</script>
		<style>
			*{margin: 0; padding: 0}
			h1{margin-bottom: 40px;}
			div{width:700px; margin: 30px auto; text-align: center; }
			table,th,td{border-collapse: collapse; border: 1px solid black;
			font-size: 16px;}
			th{width: 200px; height: 40px; }
			td{width: 500px; }
			button{width: 200px; height: 45px; margin-top:30px; }
		</style>
	</head>
	<body>
		<div>
			<h1>회원정보 등록</h1>
			<form name="mfrm" method="post" action="doMem_writer.jsp">
				<table>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="id" id="id"></td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><input type="password" name="pw" id="pw"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="name" id="name"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="phone" id="phone"></td>
					</tr>
					<tr>
						<th>성별</th>
						<td>
						<input type="radio" name="gender" value="Male">
						<label for="Male">남자</label>
						<input type="radio" name="gender" value="Female">
						<label for="Female">여자</label>
						</td>
					</tr>
					<tr>
						<th>취미</th>
						<td>
						<input type="checkbox" name="hobby" id="game" value="게임">
						<label for="game">게임</label>
						<input type="checkbox" name="hobby" id="golf" value="골프">
						<label for="golf">골프</label>
						<input type="checkbox" name="hobby" id="run" value="조깅">
						<label for="run">조깅</label>
						<input type="checkbox" name="hobby" id="cook" value="요리">
						<label for="cook">요리</label>
						<input type="checkbox" name="hobby" id="book" value="독서">
						<label for="book">독서</label>
						</td>
					</tr>
				</table>
				<button type="button" id="fbtn">저장</button>
				<a href="mem_list.jsp"><button type="button">취소</button></a>
			</form>
		</div>
	
	</body>
</html>