<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.java.www.dto.BoardDto"%>
<%@page import="com.java.www.dao.BoardDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자유게시판</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
		   *{margin:0; padding:0; text-decoration: none;}
		   div{width:1000px; margin:30px auto; text-align: center;}
		   h1{margin-bottom:30px; }
		   table,th,td{border:1px solid black; border-collapse: collapse;
		   font-size: 16px; }
		   th,td{width:200px; height:40px; }
		   button{width:200px; height:60px; margin-top:30px; background: orange; }
			th{background: orange;}
			img{width: 80%;}
		</style>
	</head>
	<% 
	//객체선언
	BoardDao bdao = new BoardDao();
	ArrayList<BoardDto> list = bdao.selectAll();	
	%>
	<body>
		<div>
		   <h1>회원 게시판</h1>
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
		     <% for(int i=0;i<list.size();i++){
		     	BoardDto bdto = list.get(i);
		    	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
		     %>
		     <tr>
			     <td><%=bdto.getBno() %></td>
			     <td><a href="view.jsp?bno=<%=bdto.getBno()%>"><%=bdto.getBtitle() %></a></td>
			     <td><%=bdto.getid()%></td>
			     <td><%=sdf.format(bdto.getBdate())%></td>
		     </tr>
		     <%}%>
		   </table>
		   <a href="bwrite.jsp"><button type="button">글쓰기</button></a>
		   <a href="index.jsp"><button type="button">수정</button></a>
		</div>
	</body>
</html>