<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pages - Login</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/write.css">
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script>
   $(function(){
	   
	   
	   
	   
	   
	   
   });//제이쿼리 구문 최신
   </script>
<style>
  	a{text-decoration: none; color: black;}
  	#wrap a{text-decoration: none; color: white; font-size: 13px}
  </style>
</head>

<body>
<!-- top시작 -->
 <%@include file="top.jsp" %>
<!-- top끝 -->
  <section>
    <h1>관리자 글쓰기</h1>
    <hr>

    <form action="/write" name="write" method="post">
      <table>
        <colgroup>
          <col width="15%">
          <col width="85%">
        </colgroup>
        <tr>
          <th>분류</th>
          <td>
            <div class="category-wrapper">
              <select name="category" id="category">
                <option value="notice">공지</option>
                <option value="event">이벤트</option>
              </select>  
            </div>
          </td>
        </tr>
        <tr>
          <th>제목</th>
          <td>
            <input type="text" name="title">
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <textarea name="content" cols="50" rows="10"></textarea>
          </td>
        </tr>
        <tr>
          <th>이미지 표시</th>
          <td>
            <input type="file" name="file" id="file">
          </td>
        </tr>
      </table>
      <hr>
      <div class="button-wrapper">
        <button type="submit" class="write">작성완료</button>
        <button type="button" class="cancel">취소</button>
      </div>
    </form>

  </section>

  <!-- footer 시작 -->
 <%@include file="footer.jsp"%>
<!-- footer 끝 -->
</body>
</html>