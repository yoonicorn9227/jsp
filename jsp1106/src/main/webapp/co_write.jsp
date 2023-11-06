<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키생성</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
		$(function(){
			$("#fbtn").click(function(){
				alert($("#co_name").val());
				alert($("#co_value").val());
				
				$("#co_name").val()
				$("#co_value").val()
				co_frm.submit(); //form전송
			});//#fbtn.click
			
		});//제이쿼리 구문최신
		</script>
	</head>
	<body>
		<h1>쿠키 생성</h1>
		<form name="co_frm" metgod="post" action="co_doWrite.jsp">
			<label>쿠키이름</label>
		<input type="text" name="co_name" id="co_name">
		<br>
		<label>쿠키 값</label>
		<input type="text" name="co_value" id="co_value">
		<br>
		<input type="button" id="fbtn" value="저장"> 
		</form>
		
		
		
	</body>
</html>