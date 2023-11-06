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
	   $("#title").val("카카오플러스 친구 오픈");
	   
	   
	   
	   
	   
   });//제이쿼리 구문 최신
   </script>
<style>
  	a{text-decoration: none; color: black;}
  	#wrap a{text-decoration: none; color: white; font-size: 13px}
  </style>
</head>

<body>
  <header id="wrap">
    <ul>
      <li><a href="join01_terms.jsp">회원가입</li></a><span>|</span>
      <li>로그인</li><span>|</span>
      <li><a href="notice_list.jsp">고객행복센터</a></li> <span>|</span>
      <li>배송지역검색</li> <span>|</span>
      <li>기프트카드 등록</li>
    </ul>
  </header>

  <nav>
    <div class="logo"></div>

    <div id="search">
      <div class="search"></div><br>
      <span>메뉴찾기</span>
    </div>

    <div id="cart">
      <div class="cart"></div><br>
      <span>장바구니</span>
    </div>

    <div class="nav-menu">
      <ul>
        <li>COOKIT소개</li>
        <li>COOKIT 메뉴</li>
        <li>리뷰</li>
        <li>이벤트</li>
        <li>MY쿡킷</li>
      </ul>  
    </div>
  </nav>

  <section>
    <h1>관리자 수정</h1>
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
            <input type="text" name="title" id="title">
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
        <a href="notice_list.jsp"><button type="button" class="cancel">취소</button></a>
      </div>
    </form>

  </section>

  <!-- footer 시작 -->
 <%@include file="footer.jsp"%>
<!-- footer 끝 -->
</body>
</html>