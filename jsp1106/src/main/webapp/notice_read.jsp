<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/read.css">
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <style>
  	a{text-decoration: none; color: black;}
  	#wrap a{text-decoration: none; color: white; font-size: 13px}
  </style>
   <script>
   $(function(){
	   
	   
	   
	   
	   
	   
   });//제이쿼리 구문 최신
   </script>
</head>

<body>
 <!-- top시작 -->
 <%@include file="top.jsp" %>
<!-- top끝 -->
  <section>
    <h1>NOTICE</h1>

    <table>
      <tr>
        <th name="bcontent">[키즈잼] 2020년 이용 시간 & 이용 요금 변경 안내</th>
      </tr>
      <tr>
        <td>2019-12-11</td>
      </tr>
      <tr>
        <td class="article">
          <img src="https://www.midashotel.co.kr/Midas_uploads/2019-12-11%2017-13-142020%EB%85%84_%ED%82%A4%EC%A6%88%EC%9E%BC_%EB%B3%80%EA%B2%BD%EC%82%AC%ED%95%AD_%EC%95%88%EB%82%B4.jpg" alt="" width="80%"></td>
      </tr>
      <tr>
        <td><strong>다음글</strong> <span class="separator">|</span> [키즈잼] 2월 프로그램 안내</td>
      </tr>
      <tr>
        <td><strong>이전글</strong> <span class="separator">|</span> [키즈잼] 2020년 1분기 정기 휴관일 안내</td>
      </tr>
    </table>

   <a href="notice_list.jsp"><div class="list">목록</div></a>
    <div class="list">삭제</div>
    <a href="notice_modify.jsp"><div class="list">수정</div></a>
  </section>

  <!-- footer 시작 -->
 <%@include file="footer.jsp"%>
<!-- footer 끝 -->
</body>
</html>