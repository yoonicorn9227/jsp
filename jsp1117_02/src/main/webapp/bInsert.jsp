<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>글쓰기</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
		   *{margin:0; padding:0;}
		   div{width:800px; margin:30px auto; text-align: center;}
		   h1{margin-bottom:30px; }
		   table,th,td{border:1px solid black; border-collapse: collapse;
		   font-size: 16px; }
		   table{width:800px; }
		   th,td{height:40px; }
		   textarea {font-size:17px;}
		   input[type=text]{width:97%; height:30px; font-size: 17px; }
		   button{width:200px; height:60px; margin-top:30px; }
		</style>
		<script>
		    $(function(){
		    	$("#fbtn").click(function(){
		    		//alert($("#btitle").val());
		    		alert("파일을 첨부합니다.");
		    		b_frm.submit();
		    		
		    	});
		    });
		</script>
	</head>
	<body>
	  <div>
	   <h1>글쓰기</h1>
	   <form name="b_frm" method="post" action="Do_bwrite" enctype="multipart/form-data">
		   <table>
		     <colgroup>
		       <col width="20%">
		       <col width="80%">
		     </colgroup>
		     <tr>
		       <th>제목</th>
		       <td><input type="text" name="btitle" id="btitle"></td>
		     </tr>
		     <tr>
		       <th>아이디</th>
		       <td></td>
		     </tr>
		     <tr>
		       <th>내용</th>
		       <td><textarea name="bcontent" rows="30" cols="65"></textarea></td>
		     </tr>
		     <tr>
		       <th>파일첨부1</th>
		       <td><input type="file" name="bfile" id="bfile" ></td>
		     </tr>
		     
		   </table>
		   <button type="button" id="fbtn">저장</button>
		   <button type="button" onclick="javascript:history.back()">취소</button>
	   </form>
	  </div>
	
	</body>
</html>