<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
	    <c:if test="${param.f_agree != 'agree' && param.s_agree != 'agree' && param.t_agree != 'agree'  }">
	      <script>
	       alert("약관동의 없이 회원가입을 진행할 수 없습니다.");
	       location.href="join01_terms.do";
	      </script>
	    </c:if>
		<meta charset="UTF-8">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style_join02_info_input.css">
		<title>회원가입 - 회원정보입력</title>
		<style>
		  .txtOn{color:blue; font-weight: 900;}
		  .txtOff{color:red; font-weight: 900;}
		</style>
		<script>
		  $(function(){
			 var idConfirm = 0;
			 
			 $("#insertBtn").click(function(){
				//alert($("#id").val());
				var id = $("#id").val();
				//var name = $("#name").val();
				//var pw = $("#pw1").val();
				//var f_tell = $("#f_tell").val();
				//var m_tell = $("#m_tell").val();
				var idPtn = /^[a-zA-Z0-9]{2,10}$/; // 영문자 4~16자리 사이 값을 비교 패턴
				//var idPtn = /^[a-z]{1}[a-zA-Z0-9]{3,15}$/; // 첫글자는 영문소문자, 다음부터는 영문자,숫자가능 4~16 
				//var namePtn = /^[가-힣]{1,3}$/; // 국문 1~3자리까지 가능
				//var pwPtn = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*]).{3,}$/; // 영문자,숫자,특수문자1개 이상
				//var f_tellPtn = /^[0-9]{2,3}$/; // 유선전화가능 국번 02,043,010
				//var m_tellPtn = /^[0-9]{3,4}$/; // 415,1111
				if(!idPtn.test(id)){
					alert("영문,숫자 2-10자리 이하로 입력하셔야 합니다.");
					return false;
				}else{
					alert("정상입력되었습니다.");
				}
				//전송
				agreeFrm.submit();
				
			 });
			 
			 //pw1,pw2 비교
			 $("#pw2").keyup(function(){
				 if($("#pw1").val()!=$("#pw2").val()){
					 $("#txtPw").text("비밀번호가 일치하지 않습니다.");
					 $("#txtPw").addClass("txtOff");
					 $("#txtPw").removeClass("txtOn");
				 }else{
					 $("#txtPw").text("비밀번호가 일치합니다.");
					 $("#txtPw").addClass("txtOn");
					 $("#txtPw").removeClass("txtOff");
				 }
			 });
			 
			 
			 //우편번호검색
			 $("#postBtn").click(function(){
				alert("daum 우편번호 검색창으로 이동"); 
				new daum.Postcode({
			        oncomplete: function(data) {
			            $("#f_postal").val(data.zonecode);
			            $("#address1").val(data.address);
			        }
			    }).open();
				
			 });
			 
			 //id체크
			 $("#idChkBtn").click(function(){
				 alert("아이디를 중복체크합니다.");
				 var id = $("#id").val();
				 $.ajax({
					 url:"IdCheck",
					 type:"post",
					 data:{"id":id},
					 dataType:"text", //text,json,xml,html
					 success:function(data){ //data - 사용가능,사용불가능
						 //alert(data);
						 if(data=='사용가능'){
							 $("#txtIdChk").text(data);
							 $("#txtIdChk").addClass("txtOn");
							 $("#txtIdChk").removeClass("txtOff");
							 idConfirm = 1;
						 }else{
							 $("#txtIdChk").text(data);
							 $("#txtIdChk").addClass("txtOff");
							 $("#txtIdChk").removeClass("txtOn");
							 idConfirm = 0;
						 }
						 console.log("받은 결과값 : "+data)
					 },
					 error:function(){
						 alert("실패");
					 }
				 });
			 }); 
		  });
		</script>
	</head>
	<body>
		<header>
			<div id="nav_up">
				<ul>
					<li><a href="#">회원가입</a></li>
					<li><a href="#">로그인</a></li>
					<li><a href="#">고객행복센터</a></li>
					<li><a href="#">배송지역검색</a></li>
					<li><a href="#">기프트카드 등록</a></li>
				</ul>
			</div>	
			<nav>
				<a href="#"></a>
				<ul>
					<li><a href="#">COOKIT소개</a></li>
					<li><a href="#">COOKIT메뉴</a></li>
					<li><a href="#">리뷰</a></li>
					<li><a href="#">이벤트</a></li>
					<li><a href="#">MY쿡킷</a></li>
				</ul>
				<ul>
					<li>
						<a href="#"><span>장바구니</span></a>
					</li>
					<li>
						<a href="#"><span>메뉴찾기</span></a>
					</li>
				</ul>
			</nav>
		</header>
		<section>
			<form name="agreeFrm" method="post" action="join03_success.do">
				<div id="subBanner"></div>
				<div id="locationN">
					<ul>
						<li>HOME</li>
						<li>회원가입</li>
						<li>회원정보입력</li>
					</ul>
				</div>
				
				<div id="sub_top_area">
					<h3>회원가입</h3>
				</div>
				
				<div id="join_step_div">
					<ul>
						<li>
							<span>STEP.1</span>
							<p>약관동의</p>
						</li>
						<li>
							<span>STEP.2</span>
							<p>회원정보</p>
						</li>
						<li>
							<span>STEP.3</span>
							<p>회원가입완료</p>
						</li>
					</ul>
				</div>
				
				<h4>
					필수 정보 입력 
					<span>(* 항목은 필수 항목입니다.)</span>
				</h4>
				<fieldset class="fieldset_class">
					<dl id="join_name_dl">
						<dt>
							<div></div>
							<label for="name">이름</label>
						</dt>
						<dd>
							<input type="text" id="name" name="name" required/>
						</dd>
					</dl>
					<dl id="join_id_dl">
						<dt>
							<div></div>
							<label for="id">아이디</label>
						</dt>
						<dd>
							<input type="text" id="id" name="id" minlength="4" maxlength="16" required/>
							<input type="button" id="idChkBtn" value="중복확인"/>
							<span id="txtIdChk"></span>
							<span>4~16자리의 영문, 숫자, 특수기호(_)만 사용하실 수 있습니다. 첫 글자는 영문으로 입력해 주세요.</span>
						</dd>
					</dl>
					<dl id="join_pw1_dl">
						<dt>
							<div></div>
							<label for="pw1">비밀번호</label>
						</dt>
						<dd>
							<input type="password" id="pw1" name="pw1" minlength="8" required />
							<span>영문, 숫자, 특수문자 중 2종류 조합 시 10자리 이상 입력</span>
							<span>영문, 숫자, 특수문자 모두 조합 시 8자리 이상 입력</span>
						</dd>
					</dl>
					<dl id="join_pw2_dl">
						<dt>
							<div></div>
							<label for="pw2">비밀번호 확인</label>
						</dt>
						<dd>
							<input type="password" id="pw2" name="pw2" minlength="8" required />
							<span id="txtPw">비밀번호를 다시 한번 입력해 주세요.</span>
						</dd>
					</dl>
					<dl id="join_mail_dl">
						<dt>
							<div></div>
							<label for="mail_id">이메일</label>
						</dt>
						<script>
						    $(function(){
						    	$("#chgMail").change(function(){
						    		if($("#chgMail").val()==""){
						    			$("#mail_tail").val("");
						    			$("#mail_tail").prop("readonly",false);
						    		}else{
							    		$("#mail_tail").val($("#chgMail").val());
							    		$("#mail_tail").prop("readonly",true);
						    		}
						    	});
						    });
						</script>
						<dd>
							<input type="text" id="mail_id" name="mail_id" required />
							<span>@</span>
							<input type="text" id="mail_tail" name="mail_tail" required />
							<select id="chgMail">
								<option value="" selected>직접입력</option>
								<option value="gmail.com">지메일</option>
								<option value="naver.com">네이버</option>
								<option value="daum.net">다음</option>
								<option value="nate.com">네이트</option>
							</select>
						</dd>
					</dl>
					
					<dl id="join_address_dl">
						<dt> 
							<div></div>
							<label for="">주소</label>
						</dt>
						<dd>
							<input type="text" id="f_postal" name="f_postal" required readonly />
							<input type="button" id="postBtn" value="우편번호"/>
							<input type="text" id="address1" name="address1" required readonly />
							<input type="text" id="address2" name="address2" required />
						</dd>
						
					</dl>
					
					<dl id="join_tell_dl">
						<dt>
							<div></div>
							<label for="f_tell">휴대전화</label>
						</dt>
						<dd>
							<input type="text" id="f_tell" name="f_tell" maxlength="3" required />
							<span> - </span>
							<input type="text" id="m_tell" name="m_tell" maxlength="4" required />
							<span> - </span>
							<input type="text" id="l_tell" name="l_tell" maxlength="4" required />
						</dd>
					</dl>
					<dl id="join_gender_dl">
						<dt>
							<div></div>
							<label for="">성별</label>
						</dt>
						<dd>
							<div>
								<input type="radio" name="gender" id="male" value="male" checked="checked"/>
								<label for="male">남성</label>
								<input type="radio" name="gender" id="female" value="female" />
								<label for="female">여성</label>
							</div>
						</dd>
					</dl>
					
					
				</fieldset>
				<h4>
					선택 입력 정보 
				</h4>
				<fieldset class="fieldset_class">
					<dl id="join_interests_dl">
						<dt>
							<label for="">취미</label>
						</dt>
						<dd>
							<ul>
								<li>
									<input type="checkbox" name="hobby" id="game" value="game" />
									<label for="game">게임</label>
								</li>
								<li>
									<input type="checkbox" name="hobby" id="golf" value="golf" />
									<label for="golf">골프</label>
								</li>
								<li>
									<input type="checkbox" name="hobby" id="run" value="run" />
									<label for="run">조깅</label>
								</li>
								<li>
									<input type="checkbox" name="hobby" id="cook" value="cook" />
									<label for="cook">요리</label>
								</li>
								<li>
									<input type="checkbox" name="hobby" id="book" value="book" />
									<label for="book">독서</label>
								</li>
								<li>
									<input type="checkbox" name="hobby" id="culture" value="culture" />
									<label for="culture">문화예술</label>
								</li>
								
							</ul>
						</dd>
					</dl>
				</fieldset>
				<div id="info_input_button">
					<input type="reset" value="취소하기" />
					<input type="button" id="insertBtn" value="가입하기" />
				</div>
				
			</form>
		</section>
		
		
		
		
		
		
		
		<footer>
			<div id="footer_wrap">
				<div id="footer_cont">
					<div id="fl_l">
						<a href="#"></a>
						<p>© COOKIT ALL RIGHTS RESERVED</p>
					</div>
					<div id="fl_c">
						<ul>
							<li><a href="#">이용약관</a></li>
							<li><a href="#">개인정보처리 방침</a></li>
							<li><a href="#">법적고지</a></li>
							<li><a href="#">사업자정보 확인</a></li>
						</ul>
						<div id="fl_c_info">
							<p>씨제이제일제당(주)</p>
							<p>대표이사 : 손경식,강신호,신현재</p>
							<p>사업자등록번호 : 104-86-09535</p>
							<p>주소 : 서울 중구 동호로 330 CJ제일제당 센터 (우) 04560</p>
							<p>통신판매업신고 중구 제 07767호</p>
							<p>개인정보보호책임자 : 조영민</p>
							<p>이메일 : cjon@cj.net</p>
							<p>호스팅제공자 : CJ올리브네트웍스㈜</p>
							<p>고객님은 안전거래를 위해 현금등으로 결제시 LG U+ 전자 결제의 매매보호(에스크로) 서비스를 이용하실 수 있습니다. <a href="#">가입 사실 확인</a></p>
						</div>
					</div>
					<div id="fl_r">
						<span>cj그룹계열사 바로가기 ▼</span>
						<dl>
							<dt>고객행복센터</dt>
								<dd>1688-1920</dd>
						</dl>
						<a href="#">1:1문의</a>						
					</div>
				</div>
			</div>
		
		
		
		</footer>
	</body>
</html>