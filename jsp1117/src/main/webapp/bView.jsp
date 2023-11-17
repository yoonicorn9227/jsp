<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>게시글 보기</title>
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
		<script>
			$(function(){
				$("#delBtn").click(function(){
					if(confirm("게시글을 삭제 하시겠습니까?")){
						location.href="bDelete.do?bno="+$("#bno").text();
						alert($("#bno").text()+"를 삭제합니다!");
					}//if(confirm)
				})//deBtn
			});//제이쿼리 구문 최신
		</script>
	</head>
	<body>
	  
	  <div>
	   <h1>회원 게시글</h1>
		   <table>
		   <colgroup>
		   	<col width="20%">
		   	<col width="80%">
		   </colgroup>
		     <tr>
		       <th>번호</th>
		       <td id="bno">${bdto.bno }</td>
		     </tr>
		     <tr>
		       <th>작성자</th>
		       <td><i class="fa fa-user-circle" aria-hidden="true"></i> ${bdto.id}</td>
		     </tr>
		     <tr>
		       <th>날짜</th>
		       <td>
		       	<i class="fa fa-calendar-o" aria-hidden="true"></i> 
		       	<fmt:formatDate value="${bdto.bdate }" pattern="yyyy-MM-dd"/>
		       </td>
		     </tr>
		     <tr>
		       <th>제목</th>
		       <td>${bdto.btitle }</td>
		     </tr>
		     <tr>
		       <th>내용</th>
		       <td>${bdto.bcontent }</td>
		     </tr>
		     <tr>
		       <th>
		       <i class="fa fa-picture-o" aria-hidden="true"></i> 
		       이미지</th>
		       <td>
		       <c:if test="${bdto.bfile!=null}">
			       <img src="upload/${bdto.bfile}">
		       </c:if>
		       <c:if test="${bdto.bfile==null}">
		       <i class="fa fa-window-close" aria-hidden="true"></i>
					첨부파일 없음
		       </c:if>
			       </td>
		     </tr>
		   </table>
		   <a href="bUpdate.do?bno=${bdto.bno}"><button type="button" id="fbtn">게시글 수정</button></a>
		   <button type="button" id="delBtn">게시글 삭제</button>
		   <a href="bList.do"><button type="button">게시글 리스트</button></a>
	  </div>
	</body>
</html>