<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>요청게시글 글쓰기-m_write.jsp</title>
    <link rel="stylesheet" href="css/css.css">
    <link href="https://fonts.cdnfonts.com/css/nasa" rel="stylesheet">
</head>
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
		nav a:hover {text-decoration: underline;}
		.border{color: #FFD500; font-weight: 700; font-size: 20px; margin-top: 120px;}
		#team{position: relative; left: 500px;}
		#info_m{width: 350px;}
	</style>
<body>
	<header>
   	 <h1 class="logo"><a href="">JJAGEUL</a></h1>
    	<nav>
	    	<ul>
		        <li><a href="">땡땡땡님</a></li>
		        <li class="border">|</li>
		        <li><a href="">회원정보</a></li>
		        <li class="border">|</li>
		        <li><a href="">로그아웃</a></li>
		        <li class="border">|</li>
		        <li><a href="">요청게시판</a></li>
	    	</ul>
		</nav>
	</header>
    <div class="board_wrap">
        <div class="board_title">
            <strong>요청게시글 작성</strong>
            <p>다시보고 싶은 영상의 교육내용 또는 교육일자를 내용안에 입력해주세요.</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" placeholder="제목 입력"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input type="text" id="info_m" placeholder="글쓴이 입력"></dd>
                    </dl>
                    <dl>
                        <dt>첨부파일</dt>
                        <dd><input type="file" name="bfile" id="bfile"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력"></textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="view.html" class="on">등록</a>
                <a href="list.html">취소</a>
            </div>
        </div>
    </div>
    <footer>
		<div id="team">
			<h3>한국 직업전문학교 copyright © ★항공 JAVA 풀스택 개발자 양성과정 5기★ - 2팀( 최창윤 | 조민진 | 정보람 | 김승우 )</h3>
		</div>
	</footer>
</body>
</html>