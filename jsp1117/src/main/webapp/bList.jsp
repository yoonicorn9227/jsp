<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 게시판</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">	
		<style>
		    *{margin:0; padding:0; text-decoration: none;}
		   a{text-decoration: none; color: black;}
		   div{width:1000px; margin:30px auto; text-align: center;}
		   h1{margin-bottom:10px; }
		   table,th,td{border:1px solid black; border-collapse: collapse;
		   font-size: 16px; }
		   th,td{width:200px; height:40px; }
		   button{width:200px; height:60px; margin-top:10px; background: orange; }
			th{background: orange;}
			img{width: 80%;}
			#n{width: 700px; height: 30px; margin:40px auto;}
			span{ display : inline-block; line-height : 30px;
			width: 30px; height: 30px; border:1px solid white; text-align: center;}
			span:hover{background: orange; color:white; font-weight: 700;}
			.on{background: orange; color:white; font-weight: 700;}
			.wrapper{width: 700px; height: 70px; margin-top:10px;}
			#bcategory{width: 80px; height: 40px; border: 1px solid #666; 
			padding: 5px; font-size: 16px;}
			.title{width:200px; height:40px; display: inline-block;}
			#bsearch{width: 200px; height: 38px; border: 1px solid #666;
				font-size: 16px;}
			#sbtn{width: 40px; height:40px; background: #666; }
			.fas{font-weight: 900; color: white;}
		</style>
		<script>
			$(function(){
				$("#sbtn").click(function(){
					if($("#bsearch").val()==""){
						alert("검색어를 입력하셔야 합니다.")
						$("bsearch").focus();
						return false;
					}//if
					sFrm.submit();
				});//#sbtn.click
			});//제이쿼리 최신구문
		</script>
	</head>
	
	<body>
		<div>
		   <h1>회원 게시판</h1>
		    <!-- 검색부분 -->
		   <div class="wrapper">
		      <form action="bList.do" name="sFrm" method="post">
		        <!-- 카테고리 부분 -->
		        <select name="bcategory" id="bcategory">
		          <option value="all">전체</option>
		          <option value="btitle">제목</option>
		          <option value="bcontent">내용</option>
		        </select>
				<!-- 검색어 부분 -->
		        <div class="title">
		          <input type="text" size="16" name="bsearch" id="bsearch">
		        </div>
		 
		        <button type="button" id="sbtn" ><i class="fas fa-search"></i></button>
		      </form>
		    </div>
		   <table>
			   <colgroup>
				   	<col width="12%">
				   	<col width="40%">
				   	<col width="18%">
				   	<col width="18%">
				   	<col width="12%">
			   </colgroup>
		     <tr>
		       <th>번호</th>
		       <th>제목</th>
		       <th>작성자</th>
		       <th>작성일</th>
		       <th>조회수</th>
		     </tr>
		     <c:if test="${listCount==0}">
		     	<tr>
		     		<td colspan="5">검색된 게시글이 없습니다!</td >
		     	</tr>
		     </c:if>
		  	<c:forEach items="${list}" var="bdto">
			     <tr>
				    <td>${bdto.bno }</td>
				    <td>
				    <a href="bView.do?bno=${bdto.bno}">
				    <c:forEach var="s" begin="1" end="${bdto.bindent}" step="1">▶</c:forEach>
				    ${bdto.btitle }
				    </a></td>
				    <td>${bdto.id }</td>
				    <td><fmt:formatDate value="${bdto.bdate}" pattern="yyyy-MM-dd"/></td>
				    <td>${bdto.bhit }</td>
			     </tr>
		  	</c:forEach>
		   </table>
		<div id="n">
		    <c:if test="${page>1 }">
		        <a href="bList.do?page=1&bcategory=${bcategory}&bsearch=${bsearch}"><span><i class="fa fa-angle-double-left" aria-hidden="true"></i></span></a>
		      </c:if>
		      <c:if test="${page==1 }">
		        <span><i class="fa fa-angle-double-left" aria-hidden="true"></i></span>
		      </c:if>
		     
		      <c:if test="${page>1 }">
		        <a href="bList.do?page=${page-1}&bcategory=${bcategory}&bsearch=${bsearch}"><span><i class="fa fa-angle-left" aria-hidden="true"></i></span></a>
		      </c:if>
		      <c:if test="${page==1 }">
		        <span><i class="fa fa-angle-left" aria-hidden="true"></i></span>
		      </c:if>
		      <c:forEach var="p" begin="${startPage}" end="${endPage}" step="1">
			      <c:if test="${page == p }">
			        <span class="on">${p}</span>
			      </c:if>
			      <c:if test="${page != p }">
			        <a href="bList.do?page=${p}&bcategory=${bcategory}&bsearch=${bsearch}"><span>${p}</span></a>
			      </c:if>
		      </c:forEach>
		      <c:if test="${page<maxPage}">
		        <a href="bList.do?page=${page+1}&bcategory=${bcategory}&bsearch=${bsearch}"><span><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
		      </c:if>
		      <c:if test="${page == maxPage}">
		        <span><i class="fa fa-angle-right" aria-hidden="true"></i></span>
		      </c:if>
		      <c:if test="${page<maxPage}">
		        <a href="bList.do?page=${maxPage}&bcategory=${bcategory}&bsearch=${bsearch}"><span><i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a>
		      </c:if>
		      <c:if test="${page == maxPage}">
		        <span><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>
		      </c:if>
		   </div>
		  <a href="bInsert.do"><button type="button">글쓰기</button></a>
		   <a href="index.do"><button type="button">메인홈</button></a>
		   </div>
	</body>
</html>