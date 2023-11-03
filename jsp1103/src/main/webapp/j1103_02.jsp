<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>질문-response객체:</title>
			<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$(function(){
			$("#fbtn").click(function(){
				alert("페이지를 이동합니다.")
				//alert($("#jumin").val()); //920207
				//alert($("#jumin").val().substr(0,2)); //0번자리 부터 2개만 빼와라 92	
				frm.submit();
				
			});//#fbtn().click
		}); //제이쿼리 최신
	</script>
	</head>
	<body>
		<form name="frm" method="get" action="j1103_02_send.jsp">
			<label>이름을 입력하세요.</label>
			<br>
			<input type="text" name="name" id="name">
			<br>
			<label>주민번호를 입력하세요.</label>
			<br>
			<input type="text" name="jumin" id="jumin">
			<br>
			<input type="button" id="fbtn" value="확인">
			
			
			
		</form>	
	
	
	
	
	</body>
</html>