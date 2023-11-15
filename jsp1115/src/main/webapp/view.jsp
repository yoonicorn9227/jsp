<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글보기</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
		   *{margin:0; padding:0;}
		   div{width:1000px; margin:30px auto; text-align: center;}
		   h1{margin-bottom:30px; }
		   table{width: 100%;}
		   table,th,td{border:1px solid black; border-collapse: collapse;
		   font-size: 16px; }
		   th{width:200px; height:40px; }
		   td{width:400px; }
		   button{width:150px; height:40px; margin-top:30px; background: orange; }
		</style>
	</head>
	<body>
	  <div>
	   <h1>회원정보보기</h1>
		   <table>
		   <colgroup>
		   	<col width="20%">
		   	<col width="80%">
		   </colgroup>
		     <tr>
		       <th>번호</th>
		       <td></td>
		     </tr>
		     <tr>
		       <th>작성자</th>
		       <td></td>
		     </tr>
		     <tr>
		       <th>날짜</th>
		       <td></td>
		     </tr>
		     <tr>
		       <th>제목</th>
		       <td></td>
		     </tr>
		     <tr>
		       <th>내용</th>
		       <td></td>
		     </tr>
		     <tr>
		       <th>이미지</th>
		       <td><img src="upload/"></td>S
		     </tr>
		   </table>
		   <a href="update.jsp"><button type="button" id="fbtn">게시글수정</button></a>
		   <a href="delete.jsp"><button type="button" id="fbtn">게시글삭제</button></a>
		   <a href="list.jsp"><button type="button">게시글리스트</button></a>
	  </div>
	</body>
</html>