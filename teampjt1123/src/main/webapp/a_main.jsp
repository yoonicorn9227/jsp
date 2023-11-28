<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<c:if test="${session_id==null}">
		<script>
			alert("로그인을 해야만 접속이 가능합니다.");
			location.href="a_login.do";
		</script>
	</c:if>
	<c:if test="${session_id=='aaa'}">
		<script>
			alert("로그인을 해야만 접속이 가능합니다.");
			location.href="a_login.do";
		</script>
	</c:if>
	<title>main</title>
	<style>
		body{margin: 0; overflow: hidden;}
		table{width: 100vw; height: 100vh; margin: 0}
		.bg-video {position: absolute; top: 0; left: 0; height: 100%; width: 100%;}
		.bg-video_content {height: 100%; width: 100%; object-fit: cover;}
		
		.bg-text {position: absolute; top: 50%; width: 100%; height: 100%;}
		.bg-text h1 {margin: -800px; text-align: center; font-size: 200px; font-weight: 700; color: #ffffff;}
		.bg-text h3 {margin: 1400px auto; text-align: center; font-size: 20px; font-weight: 700; color: #ffffff;}
		ul{display: flex; justify-content: center; margin:-50px;}
		ul>li {float: left; list-style: none;}
		img{margin:auto;}
		.f_search {margin-top: 56px; width: 1180px; height: 180px; margin-left: auto; margin-right: auto; text-align: center; position: relative; bottom:190px;}
		.sch_wrap {width: 664px; margin: 0 auto; display: flex; flex-direction: column; align-items: center; }
		.sch_wrap form {position: relative; width: 644px; height: 68px;}
		.txt {box-sizing: border-box; width: 100%; height: 68px; border: 2px solid #202020; padding: 0 20px; font-size: 20px; font-weight: 700;}
		.btn_srch {display: inline-block; width: 32px; height: 32px; background: url('images/ico_set2.png') -600px -150px no-repeat; background-size: 800px 800px;
    	border: 0; position: absolute; right: 280px; top: 57%; transform: translateY(-50%); cursor: pointer;}
    	#center {text-align: center;}
		#menu{position: relative; bottom:150px; display: inline-block;}
		#menu img{border-radius: 10px;}
		#menu_my {margin-right: 30px; }
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
				</form>
				</div>
			</div>
			<!-- 게시판 -->
			<div id="center">
				<ul id="menu">
					<li id="menu_my">
					<a href="a_myPage.jsp"><img src="images/my.png"></a>
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