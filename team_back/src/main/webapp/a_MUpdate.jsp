<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입-MUpdate.jsp</title>
    <link rel="stylesheet" href="css/a_signUp.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
    	$(function(){
    		$("#pw1").focus();
    		$("#MUpdateBtn").click(function(){
	    		if($("#pw1").val()!=$("#pw2").val()){
	    			alert("비밀번호가 일치 하지 않습니다. 비밀번호를 재확인 해주세요.");
	    			$("#pw2").focus();
	    			return false;
	    		}//if(패스워드 확인)
    			
	    		if($("#pw1").val().length<4){
					alert("비밀번호를 4자리 이상 입력하세요.")
					$("#pw1").focus();
					return false
					}//if-비밀번호 유효성
					
	    		 if($("input[name='region']:checked").length != 1) {
	    	            alert("지역선택은 1개만 할 수 있습니다.");
	    	            return false;
	    	        }///if
	    			
	    		alert("회원정보를 수정하였습니다.");
    			MUpdateFrm.submit();
    		});//#MUpdateBtn
    	
    		
    		$("#resBtn").click(function(){
    			alert("회원정보 페이지로 이동합니다.")
    			location.href="a_myPage.do";
    		});//#resBtn
    	
    		$("#pw2").keyup(function(){

    			if($("#pw2").val()=="" || $("#pw1").val()==""){
					 $("#pwCheck").text("※비밀번호를 다시한번 입력해주세요.");
					 $("#pwCheck").css("color","#fff");
					 return false;
    			}//if
    			if($("#pw1").val()!=$("#pw2").val()){
					 $("#pwCheck").text("비밀번호가 일치 하지 않습니다.");
					 $("#pwCheck").css("color", "#FF4500");
				 }else{
					 $("#pwCheck").text("비밀번호가 일치합니다.");
					 $("#pwCheck").css("color", "greenYellow");
				 }//if
			 });//#pw2-비밀번호 중복확인
    		
    	});//제이쿼리 구문
    </script>
</head>
<body>
	<form name="MUpdateFrm" method="post" action="do_MUpdate.do">
	<input type="hidden" name="id" id="id" value="${smdto.id}" >
	<input type="hidden" name="name" id="name" value="${smdto.name}">
	<input type="hidden" name="p_num" id="p_num" value="${smdto.p_num}">
	<input type="hidden" name="gender" id="gender" value="${smdto.gender}">
	    <table>
			<h1 id="idtitle">[${session_name}]님 회원정보 수정</h1>
			<tr>
			<th>아 이 디 :</th> 
				<td class="Mup">${smdto.id} </td>
			</tr>
			<tr>
			<th>패스워드 :</th>
				<td id="pwCon">
					<input type="password" name="pw1" id="pw1" placeholder="Password" >
					<div id="pwt">※비밀번호 4자리 이상</div>
				</td>
				
			</tr>
			<th>패스워드 확인 :</th>
				<td>
					<input type="password" name="pw2" id="pw2" placeholder="비밀번호 재입력" >
					<div id="pwCheck">※비밀번호를 다시한번 입력해주세요.</div>
				</td>
			</tr>
			<tr>
			<th>회원이름 :</th>
				<td class="Mup">${smdto.name}</td>
			</tr>
			<tr>
			<th>주민번호 :</th>
				<td class="Mup">${smdto.p_num}</td>
			</tr>
			<tr>
			<th>휴대전화 :</th>
				<td><input type="text" name="phone" id="phone" value="${smdto.phone}"></td>
			</tr>
			<th>e-mail :</th>
				<td><input type="text" name="email" id="email" value="${smdto.email}"></td>
			</tr>
			<tr>
			<th>회원성별 :</th>
				<td class="radio_change Mup">${smdto.gender}</td>
			</tr>
			<tr>
				<th>※주   소※</th>
				<td class="radio_change">
				<input type="checkbox" name="region" id="Seoul" value="서울"
				<c:if test="${fn:contains(smdto.region,'서울')}">checked</c:if>>
				<label for="서울">서울</label>
				<input type="checkbox" name="region" id="Suwon" value="수원"
				<c:if test="${fn:contains(smdto.region,'수원')}">checked</c:if>>
				<label for="수원">수원</label>
				<input type="checkbox" name="region" id="Cheonan" value="천안"
				<c:if test="${fn:contains(smdto.region,'천안')}">checked</c:if>>
				<label for="천안">천안</label>
				<input type="checkbox" name="region" id="Incheon" value="인천"
				<c:if test="${fn:contains(smdto.region,'인천')}">checked</c:if>>
				<label for="인천">인천</label>
				<input type="checkbox" name="region" id="Gwangmyeong" value="광명"
				<c:if test="${fn:contains(smdto.region,'광명')}">checked</c:if>>
				<label for="광명">광명</label>
				<input type="checkbox" name="region" id="Busan" value="부산"
				<c:if test="${fn:contains(smdto.region,'부산')}">checked</c:if>>
				<label for="부산">부산</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" id="selBtn">
					<button type="button" id="MUpdateBtn">회원수정</button>
					<button type="button" id="resBtn">메인화면</button>
				</td>
			</tr>
	</form>

	<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
    	<source src="images/main_background.mp4">
    </video>
</body>
</html>
