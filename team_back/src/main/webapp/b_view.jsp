<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <c:if test="${session_name==null}">
     	<script>
     		alert("로그인을 해야 이용할 수 있습니다.");
     		location.href="a_login.do";
     	</script>
     </c:if>
    <title>요청게시판-b_view.jsp</title>
     <link rel="stylesheet" href="css/css.css">
     <link href="https://fonts.cdnfonts.com/css/nasa" rel="stylesheet">
     <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <style>
		footer {margin-top: 20px;padding: 65px 0;border-top: 1px solid #ddd;
		text-align: center; display: flex;  height: 100%;
		font-size: 1.4rem; background-color:#003F88; color: #FFD500;}
		header {text-align: center; background-color:#003F88; height: 200px;}
		header .logo {padding: 20px 0; color: #FFD500; font-size: 100px; font-family: 'Nasa', sans-serif; position: relative; top:30px;}
		header .logo img {height: 40px;}
		nav{padding: 25px; position: absolute;top: 0; right: 0;}
		nav li {display: inline-block; margin: 0 20px;}
		nav a {font-size: 1.4rem;color: #FFD500; font-size: 20px;}
		#logo_name{font-size: 1.4rem; color: #FFD500; font-size: 20px;}
		nav a:hover {text-decoration: underline;}
		.border{color: #FFD500; font-weight: 700; font-size: 20px; margin-top: 120px;}
		#team{position: relative; left: 500px;}
		#info_m{width: 350px;}
	</style>
	<script>
	$(function(){
		$("#delBtn").click(function(){
			if(confirm("게시글을 삭제하시겠습니까?")){
				location.href="b_delete.do?page=${page}&bsno=${sbdto.bsno}";
			}//if
		});//#delBtn
	});//제이쿼리 최신
	</script>
</head>
<header>
   	 <h1 class="logo"><a href="a_main.do">JJAGEUL</a></h1>
    	<nav>
	    	<ul>
		        <li id="logo_name">${session_name}님</li>
				<li class="border">|</li>
				<li><a href="a_myPage.do">회원정보</a></li>
				<li class="border">|</li>
				<li><a href="a_logout.do">로그아웃</a></li>
				<li class="border">|</li>
				<li><a href="a_main.do">메인페이지</a></li>
	    	</ul>
		</nav>
	</header>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <form >
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    ${sbdto.btitle}
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>${sbdto.bsno}</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>${sbdto.id}</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd><fmt:formatDate value="${sbdto.bdate}" pattern="yyyy.MM.dd"/></dd>
                    </dl>
                    <dl>
                        <dt>첨부파일</dt>
                        <dd>${sbdto.bfile}</dd>
                    </dl>
                </div>
                <div class="cont">
                    ${sbdto.bcontent}
                </div>
            </div>
            <div class="bt_wrap">
                <a href="b_list.do" class="on">목록</a>
                <a href="edit.html" class="on">수정</a>
                <a class="on" id="delBtn">삭제</a>
            </div>
        </div>
        </form>
    </div>
    <footer>
		<div id="team">
			<h3>한국 직업전문학교 copyright © ★항공 JAVA 풀스택 개발자 양성과정 5기★ - 2팀( 최창윤 | 조민진 | 정보람 | 김승우 )</h3>
		</div>
	</footer>
</body>
</html>