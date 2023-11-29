<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.cdnfonts.com/css/nasa" rel="stylesheet">
	<c:if test="${session_id==null}">
		<script>
			alert("로그인을 해야만 접속이 가능합니다.");
			location.href="a_login.do";
		</script>
	</c:if>
	<title>main</title>
	<link rel="stylesheet" href="css/a_main.css">
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
					<a href="a_myPage.do"><img src="images/my.png"></a>
					</li>
					<li id="menu_my">
					<a href="#"><img src="images/list.png"></a>
					</li>
				</ul>
			</div>
				<!-- 이미지링크 -->
				<div>
					<ul>
						<li>
						<a href="https://github.com/" target="_blank"><img src="images/githube.png"></a>
						</li>
						<li>
						<a href="https://www.mockaroo.com/" target="_blank"><img src="images/mockaroo.png"></a>
						</li>
						<li>
						<a href="https://www.data.go.kr/index.do" target="_blank"><img src="images/data.png"></a>
						</li>
						<li>
						<a href="http://json.parser.online.fr/" target="_blank"><img src="images/json.png"></a>
						</li>
						<li>
						<a href="https://cafe.naver.com/koreaitbigdata" target="_blank"><img src="images/java.png"></a>
						</li>
						<li>
						<a href="https://fonts.google.com/?subset=korean&noto.script=Kore" target="_blank"><img src="images/webfonts.png"></a>
						</li>
						<li>
						<a href="https://elmah.io/tools/xml-formatter/" target="_blank"><img src="images/xml.png"></a>
						</li>
						<li>
						<a href="https://us06web.zoom.us/j/5201428216?pwd=bk9hT0ppVithT2JKblJNQTIzbktNUT09" target="_blank"><img src="images/zoom.png"></a>
						</li>
					</ul>
				</div>
				<h1>JJAGEUL</h1>
				<h3>
					한국 직업전문학교 copyright © ★항공 JAVA 풀스택 개발자 양성과정 5기★ - 2팀( 최창윤 | 조민진 | 정보람 | 김승우 )
				</h3>
			</div>
		</div>
	</table>
	</body>
</html>