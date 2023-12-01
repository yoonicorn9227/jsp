<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.cdnfonts.com/css/nasa" rel="stylesheet">
	<title>main</title>
	<link rel="stylesheet" href="css/a_main.css">
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	$(function(){
		$("#my_png").click(function(){
			alert("회원정보 보기 페이지로 이동합니다.");
		});//#my_png
		
		$("#list_png").click(function(){
			alert("요청게시판으로 이동합니다.");
		});//#list_png
		
	});//제이쿼리 구문 최신
	</script>
	<style>
	   .loc{position: relative; top:-50px; width:96px; text-align: center; }
	   a{text-decoration: none; color: #fff;}
	</style>
	</head>
	<body>
		<table>
		<div class="bg-video">
			<video class="bg-video_content" autoplay muted loop>
				<source src="images/main_background.mp4" type="video/mp4" />
			</video>
			<div class="bg-text">
			<!-- 검색창 넣기 -->
			<div class="f_search">
			<div class="sch_wrap">
				<form action="https://www.google.co.kr/search" method="get" target="_blank">
					<input type="text" class="txt" id="fn_txt_srch" placeholder="검색어를 입력해주세요" name="query" required>
					<button class="btn_srch" type="submit"></button>
					<a href="a_logout.do"><span><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</span></a>
				</form>
				</div>
			</div>
			<!-- 게시판 -->
			<div id="center">
				<ul id="menu">
					<li id="menu_my">
					<a href="a_myPage.do"><img src="images/my_1.png" id="my_png"></a>
					</li>
					<li id="menu_list">
					<a href="b_list.do"><img src="images/list_1.png" id="list_png"></a>
					</li>
				</ul>
			</div>
				<!-- 이미지링크 -->
				<div>
					<ul>
					    <c:forEach var="num" begin="0" end="7">
						<li>
						<a href="https://github.com/" target="_blank" class="mpg">
						  <c:if test="${num/4<1}">
							  <img src="images/link1.png">
							  <div class="loc">gitHub</div>
						  </c:if>
						  <c:if test="${num/4>=1}">
							  <img src="images/link2.png">
							  <div class="loc">xml</div>
						  </c:if>
						</a>
						</li>
					    </c:forEach>
						<li>
					</ul>
					<ul id="ul2">
						<li>
						<c:if test="pno==null">
							<a href="#" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</c:if>
						<c:if test="">
							<a href="임의로 입력한 url" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</c:if>
						</li>
						<li>
						<a href="https://www.mockaroo.com/" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</li>
						<li>
						<a href="https://www.data.go.kr/index.do" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</li>
						<li>
						<a href="http://json.parser.online.fr/" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</li>
						<li>
						<a href="https://cafe.naver.com/koreaitbigdata" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</li>
						<li>
						<a href="https://fonts.google.com/?subset=korean&noto.script=Kore" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</li>
						<li>
						<a href="https://elmah.io/tools/xml-formatter/" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</li>
						<li>
						<a href="https://us06web.zoom.us/j/5201428216?pwd=bk9hT0ppVithT2JKblJNQTIzbktNUT09" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</li>
						<li>
						<a href="https://us06web.zoom.us/j/5201428216?pwd=bk9hT0ppVithT2JKblJNQTIzbktNUT09" target="_blank" class="mpg"><img src="images/plus.png"></a>
						</li>
					</ul>
				</div>
				<h1 id="h1"><strong style=" color:#0038a8";>JJA</strong>GEUL</h1>
				<h3>
					한국 직업전문학교 copyright © ★항공 JAVA 풀스택 개발자 양성과정 5기★ - 2팀( 최창윤 | 조민진 | 정보람 | 김승우 )
				</h3>
			</div>
		</div>
	</table>
	</body>
</html>