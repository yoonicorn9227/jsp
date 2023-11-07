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
				$("#fbtn").click(function(){
					alert($("#stuNum").val());
					alert($("#name").val());
					$("#stuNum").val()
					$("#name").val()
					frm.submit();
					
				});//#fbtn.click
				
			});//제이쿼리 구문 최신
		</script>
	</head>
	<body>
		<form name="frm" method="post" action="jsp1107_04.jsp">
			<label>학번</label>
			<input type="text" name="stuNum" id="stuNum"><br>
			<label>이름</label>
			<input type="text" name="name" id="name"><br>
			<label>국어</label>
			<input type="text" name="kor" id="kor"><br>
			<label>영어</label>
			<input type="text" name="eng" id="eng"><br>
			<label>수학</label>
			<input type="text" name="math" id="math"><br>
			<input type="button" id="fbtn"  value="저장"><br>
		</form>
	</body>
</html>