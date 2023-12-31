<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입-a_signUp.jsp</title>
    <link rel="stylesheet" href="css/a_signUp.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<form name="signFrm" method="post" action="회원가입 처리 페이지 URL">
	    <table>
			<h1 id="idtitle">회원가입</h1>
			<tr>
			<th>아 이 디</th>
				<td>
					<input type="text" name="id" id="id" placeholder="ID">
					<button type="button" id="idCheck">아이디 중복확인</button>
				</td>
			</tr>
			<tr>
			<th>패스워드</th>
				<td><input type="password" name="pw1" id="pw1" placeholder="Password" ></td>
			</tr>
			<th>패스워드 확인</th>
				<td>
					<input type="password" name="pw2" id="pw2" placeholder="비밀번호 재입력" >
					<div id="pwCheck">※비밀번호를 확인하세요.</div>
				</td>
			</tr>
			<tr>
			<th>회원이름</th>
				<td><input type="text" name="name" id="name" placeholder=" 성명"></td>
			</tr>
			<tr>
			<th>주민번호</th>
				<td><input type="text" name="p_num" id="p_num" placeholder="YYMMDD-1234567"></td>
			</tr>
			<tr>
			<th>휴대전화</th>
				<td><input type="text" name="phone" id="phone" placeholder="ex) 010-1234-5678"></td>
			</tr>
			<th>e-mail</th>
				<td><input type="text" name="email" id="email" placeholder="ex) korev05@emali.com"></td>
			</tr>
			<tr>
			<th>회원성별</th>
				<td class="radio_change">
					<input type="radio" name="gender" id="Male" value="Female">
					<label for="Male">남자</label>
					<input type="radio" name="gender" id="Female" value="Female">
					<label for="Female">여자</label>
				</td>
			</tr>
			<tr>
				<th>주   소</th>
				<td class="radio_change">
				<input type="checkbox" name="region" id="Seoul" value="서울">
				<label for="서울">서울</label>
				<input type="checkbox" name="region" id="Suwon" value="수원">
				<label for="수원">수원</label>
				<input type="checkbox" name="region" id="Cheonan" value="천안">
				<label for="천안">천안</label>
				<input type="checkbox" name="region" id="Incheon" value="인천">
				<label for="인천">인천</label>
				<input type="checkbox" name="region" id="Gwangmyeong" value="광명">
				<label for="광명">광명</label>
				<input type="checkbox" name="region" id="Busan" value="부산">
				<label for="부산">부산</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" id="selBtn">
					<button type="submit" id="subBtn">가입하기</button>
					<button type="submit" id="resBtn">취소하기</button>
				</td>
			</tr>
	</form>

	<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
    	<source src="images/main_background.mp4">
    </video>
</body>
</html>
