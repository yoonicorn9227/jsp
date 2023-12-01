<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입-a_signUp.jsp</title>
    <link rel="stylesheet" href="css/a_signUp.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
	    $(function(){
	    	$("#retBtn").click(function(){
	    		alert("회원가입을 취소하셨습니다. ※로그인 페이지로 이동합니다.")
	    		location.href="a_login.do";
	    	});//#retBtn
	    
	    	//------------------------------------
			 $("#subBtn").click(function(){
				 if($("#id").val().length<2){
					 alert("아이디를 입력하셔야 합니다.");
					 $("#id").focus();
					 return false;
				 }//if-id
				 
				if($("#pw1").val().length<4){
					alert("비밀번호는 4자리 이상 입력해주세요.");
					$("#pw1").focus();
					return false;
				}//if-pw1
				 
				 if($("input[name='region']:checked").length!=1){
					 alert("지역은 1개만 선택 하셔야합니다.");
					 return false;
				 }//if-region
				 
				 alert("회원정보를 저장합니다.");
				 signFrm.submit();
			 });//#subBtn
			 //-----------------------------------
			 $("#pw1").keyup(function(){
				 if($("#pw1").val().length<4){
					 $("#pwt").css("color","red");	
				 }else{
					 $("#pwt").text("비밀번호 조건충족");
					 $("#pwt").css("color","#fff");
				}
			});//#pw1-비밀번호 4자리이상
			 //-----------------------------------
			 $("#pw2").keyup(function(){
				 if($("#pw2").val()=="" || $("#pw1").val()==""){
					 $("#pwCheck").text("※비밀번호를 다시한번 입력해주세요.");
					 $("#pwCheck").css("color","#fff");
					 return false;
    			}//if(미입력시)
				 if($("#pw1").val()!=$("#pw2").val()){
					 $("#pwCheck").text("비밀번호가 일치 하지 않습니다.");
					 $("#pwCheck").css("color", "#FF4500");
				 }else{
					 $("#pwCheck").text("비밀번호가 일치합니다.");
					 $("#pwCheck").css("color", "greenYellow");
				 }//if
			 });//#pw2-비밀번호 중복확인
			 //id체크
			 var idConfirm = 0;
			 
			 $("#idCheck").click(function(){
				 alert("아이디를 중복 체크 합니다.");
				 var id = $("#id").val();
				 $.ajax({
					 url:"IdCheck",
					 type:"post",
					 data:{"id":id},
					 dataType:"text",
					 success:function(data){
						 if(data=='사용가능'){
							 $("#txtIdChk").text(data);
							 $("#txtIdChk").css("color", "greenYellow");
							 idConfirm =1;
						
						 }else{
							 $("#txtIdChk").text(data);
							 $("#txtIdChk").css("color", "red");
							 idConfirm =0;
						 }
						 console.log("받은 결과값 :"+data)
					 },
					 error:function(){
						 alert("실패");
					 }//error
					 
				 })//ajax
			  });//#idCheck
			//-----------------------------------------
			
			
			
			
			 
		 });//제이쿼리 구문최신
    </script>
</head>
<body>
	<form name="signFrm" method="post" action="do_MSignUp.do">
	    <table>
			<h1 id="idtitle">회원가입</h1>
			<tr>
			<th>아 이 디</th>
				<td >
					<input type="text" name="id" id="id" placeholder="ID">
					<button type="button" id="idCheck" value="중복확인">중복확인</button><span id="txtIdChk"></span>
					
				</td>
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
				<td><input type="text" name="name" id="name" placeholder="성명"></td>
			</tr>
			<tr>
			<th>주민번호 :</th>
				<td><input type="text" name="p_num" id="p_num" placeholder="YYMMDD-1234567"></td>
			</tr>
			<tr>
			<th>휴대전화 :</th>
				<td><input type="text" name="phone" id="phone" placeholder="ex) 010-1234-5678"></td>
			</tr>
			<th>e-mail :</th>
				<td><input type="text" name="email" id="email" placeholder="ex) korev05@emali.com"></td>
			</tr>
			<tr>
			<th>회원성별 :</th>
				<td class="radio_change">
					<input type="radio" name="gender" id="Male" value="Male">
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
					<button type="button" id="subBtn">가입</button>
					<button type="button"  id="retBtn">취소</button>
				</td>
				
			</tr>
	    
	</form>

	<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
    	<source src="images/main_background.mp4">
    </video>
</body>
</html>
