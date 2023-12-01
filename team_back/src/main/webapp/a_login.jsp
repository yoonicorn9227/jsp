<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JJAGEUL-로그인 페이지</title>
        <link rel="stylesheet" href="css/a_login.css">
        <link href="https://fonts.cdnfonts.com/css/nasa" rel="stylesheet">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    	<script>
			$(function(){
				$("#signUpBtn").click(function(){
					alert("회원가입 페이지로 이동합니다.")
					location.href="a_signUp.do";
				});//#회원가입
				
				$("#loginBtn").click(function(){
					
					if($("#id").val().length<3){
					alert("아이디를 다시 입력하세요.")
					$("#id").focus();
					return false
					}//if-로그인 유효성
					
					if($("#pw").val().length<4){
					alert("비밀번호를 다시 입력하세요.")
					$("#pw").focus();
					return false
					}//if-비밀번호 유효성
					loginFrm.submit();
				});//로그인버튼
			});//제이쿼리 구문
		</script>
    </head>
    <body>
        <div class="login_wap">
            <h1><span id="JJA">JJA</span><span id="GEUL">GEUL</span></h1>
            <h2>로 그 인</h2>
            <form name="loginFrm" method="post" id="log_f" action="do_Login.do">
                <input type="text" name="id" placeholder="id" id="id">
                <input type="password" name="pw" placeholder="Password" id="pw">
                <label for="remember-check" id="labelpw">
                    <input type="checkbox" id="remember-check">아이디 저장하기
                </label>
                <input type="button" value="Login" id="loginBtn">
                <input type="button" value="Sign Up" id="signUpBtn">
            </form>
        </div>
    <video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
    	<source src="images/main_background.mp4">
    </video>
    </body>
</html>