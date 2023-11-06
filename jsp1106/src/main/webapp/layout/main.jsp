<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> JARDIN SHOP </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function() {
	
	var mySwiper = new Swiper('#mainRoll',{
		pagination: '#mainThum',
		paginationClickable: true,
		slidesPerView: 1,
		loop: true,
		autoplay:5000
	});

	var mySwiper2 = new Swiper('#bestseller',{
		paginationClickable: true,
		slidesPerView: 3,
		loop: true,
		autoplay:3000
	});

	var mySwiper3 = new Swiper('#mainSale',{
		paginationClickable: true,
		slidesPerView: 5,
		loop: true,
		autoplay:3000
	});
	
	$(window).bind('resize', function() {
		rollwidth();	
	});

	function rollwidth(){
		var winWidth = $(window).width();
		if(winWidth < 768){
			mySwiper2.params.slidesPerView = 1;
			mySwiper3.params.slidesPerView = 2;
		}else{
			mySwiper2.params.slidesPerView = 3;
			mySwiper3.params.slidesPerView = 5;
		}
	}
	$('.arrowLeft').bind('click', function(e){
		e.preventDefault()
		mySwiper2.swipePrev()
	});
	$('.arrowRight').bind('click', function(e){
		e.preventDefault()
		mySwiper2.swipeNext()
	});

	$('.saleLeft').bind('click', function(e){
		e.preventDefault()
		mySwiper3.swipePrev()
	});
	$('.saleRight').bind('click', function(e){
		e.preventDefault()
		mySwiper3.swipeNext()
	});

	rollwidth();


	var myWish = new Swiper('#wishList',{
		paginationClickable: true,
		slidesPerView: 3,
		loop: true,
		autoplay:3000
	});


});
</script>
</head>
<body>



<!--익스레이어팝업-->
<div id="ieUser" style="display:none">
	<div class="iewrap">	
		<p class="img"><img src="../images/ico/ico_alert.gif" alt="알림" /></p>
		<p class="txt">IE버전이 낮아 홈페이지 이용에 불편함이 있으므로 <strong>IE9이상이나 다른 브라우저</strong>를 이용해 주세요. </p>
		<ul>
			<li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="../images/ico/ico_ie.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="../images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="../images/ico/ico_mozila.gif" alt="MOZILA 최신브라우저 다운" ></a></li>
			<li><a href="http://www.apple.com/safari" target="_blank"><img src="../images/ico/ico_safari.gif" alt="SAFARI 최신브라우저 다운" ></a></li>
			<li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="../images/ico/ico_opera.gif" alt="OPERA 최신브라우저 다운" ></a></li>		
		</ul>
		<p class="btn" onclick="msiehide();"><img src="../images/ico/ico_close.gif" alt="닫기" /></p>
	</div>
</div>
<!--//익스레이어팝업-->
<!--IE 6,7,8 사용자에게 브라우저 업데이터 설명 Div 관련 스크립트-->
 <script type="text/javascript">

     var settimediv = 200000; //지속시간(1000= 1초)
     var msietimer;

     $(document).ready(function () {
         msiecheck();
     });

     var msiecheck = function () {
         var browser = navigator.userAgent.toLowerCase();
         if (browser.indexOf('msie 6') != -1 ||
                browser.indexOf('msie 7') != -1 ||
				 browser.indexOf('msie 8') != -1) {
             msieshow();			 
         }
         else {
             msiehide();
         }
     }

     var msieshow = function () {
        $("#ieUser").show();
        msietimer = setTimeout("msiehide()", settimediv);
     }

     var msiehide = function () {
		$("#ieUser").hide();
        clearTimeout(msietimer);
     }
</script>

<div id="allwrap">
<div id="wrap">
<!-- top시작 -->
	<%@include file="../sub/top.jsp" %>
<!-- top끝 -->
	<!-- mainSection -->
	<div id="mainSection">

		<!-- main rolling -->
		<div id="mainRoll">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="#"><img src="../images/img/main_visible01.jpg" alt="" /></a>
				</div>
				<div class="swiper-slide">
					<a href="#"><img src="../images/img/main_visible01.jpg" alt="" /></a>
				</div>
				<div class="swiper-slide">
					<a href="#"><img src="../images/img/main_visible01.jpg" alt="" /></a>
				</div>
				<div class="swiper-slide">
					<a href="#"><img src="../images/img/main_visible01.jpg" alt="" /></a>
				</div>
			</div>
			<div id="mainThum"></div>
		</div>
		<!-- //main rolling -->

		
		<!-- main contents -->
		<div id="mainContents">

			<!-- Best seller -->
			<div class="mtitle"><h2>JARDIN BEST SELLER</h2></div>
			<div id="bestseller">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="img"><a href="#"><img src="../images/img/sample_best_seller.jpg" alt="Best seller 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">5,600원</div>
					</div>
					<div class="swiper-slide">
						<div class="img"><a href="#"><img src="../images/img/sample_best_seller.jpg" alt="Best seller 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">5,000원</div>
					</div>
					<div class="swiper-slide">
						<div class="img"><a href="#"><img src="../images/img/sample_best_seller.jpg" alt="Best seller 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">6,000원</div>
					</div>
				</div>
			</div>
			<div class="rollbtn">
				<a class="arrowLeft" href="#"></a> 
				<a class="arrowRight" href="#"></a>
			</div>
			<!-- //Best seller -->

			<!-- Review -->
			<div class="mtitle"></div>
			<div id="mainReview">
				<ul>
					<li class="roast">
						<a href="#"><img src="../images/img/img_fresh_roast_bean.jpg" alt="FRESH ROAST BEAN" /></a>
						<p class="title">FRESH ROAST<br/>BEAN</p>
					</li>
					<li class="review"><a href="#"><img src="../images/img/img_review.jpg" alt="REVIEW" /></a></li>
					<li class="last">
						<a href="#">
							<p class="title">SPECIALTY<br/>COFFEE<span>스페셜티 커피 전문점 커피 휘엘</span></p>
							<div class="fiel"><img src="../images/img/img_coffee_fiel.jpg" alt="THE COFFEE CREAOR SINCE 1984" /></div>
						</a>
					</li>
				</ul>
			</div>
			<!-- //Review -->

			<!-- new goods -->
			<div class="mtitle"></div>
			<div id="newGoods">
				<div class="newcoffee">
					<h3>NEW COFFEE</h3>
					<ul>
						<li class="name">드립커피 로스트</li>
						<li class="txt">종이컵 또는 작은 머그컵에 딱맞는 용량의 스틱 제품으로 다양한 커피 메뉴를 가정과 사무실에서만날 수 있습니다.</li>
						<li class="price">5,600원</li>
					</ul>
					<div class="abimg"><img src="../images/img/img_newcoffee.png" alt="드립커피 로스트" /></div>
				</div>

				<div class="mdchoice">
					<div class="one">
						<h3>MD CHOICE</h3>
						<ul>
							<li class="name">쟈뎅 바리스타 벨벳 에스프레소원두커피</li>
							<li class="txt">다크 초코렛을 연상시키는 달콤함이 입안에서 오래도록 지속되며, 풍부한 바디감을 느낄 수 있습니다.</li>
							<li class="price">5,600원</li>
						</ul>
						<div class="img"><img src="../images/img/img_md_choice01.jpg" alt="MD CHOICE 상품" /></div>
					</div>

					<div class="two">
						<ul>
							<li class="name">쟈뎅 바리스타 벨벳 에스프레소원두커피</li>
							<li class="txt">다크 초코렛을 연상시키는 달콤함이 입안에서 오래도록 지속되며, 풍부한 바디감을 느낄 수 있습니다.</li>
							<li class="price">5,600원</li>
						</ul>
						<div class="img"><img src="../images/img/img_md_choice02.jpg" alt="MD CHOICE 상품" /></div>
					</div>
				</div>
			</div>
			<!-- new goods -->

			<!-- sale -->
			<div class="mtitle"><h2>SALE</h2></div>
			<div id="mainSale">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="img"><a href="#"><img src="../images/img/sample_sale.jpg" alt="sale 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">5,600원</div>
						<div class="discount">20%</div>
					</div>
					<div class="swiper-slide">
						<div class="img"><a href="#"><img src="../images/img/sample_sale.jpg" alt="sale 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">5,000원</div>
						<div class="discount">20%</div>
					</div>
					<div class="swiper-slide">
						<div class="img"><a href="#"><img src="../images/img/sample_sale.jpg" alt="sale 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">6,000원</div>
						<div class="discount">20%</div>
					</div>
					<div class="swiper-slide">
						<div class="img"><a href="#"><img src="../images/img/sample_sale.jpg" alt="sale 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">6,000원</div>
						<div class="discount">20%</div>
					</div>
					<div class="swiper-slide">
						<div class="img"><a href="#"><img src="../images/img/sample_sale.jpg" alt="sale 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">6,000원</div>
						<div class="discount">20%</div>
					</div>
				</div>
			</div>	
			<div class="rollbtn">
				<a class="saleLeft" href="#"></a> 
				<a class="saleRight" href="#"></a>
			</div>
			<!-- //sale -->
	
			<!-- brand -->
			<div class="mtitle"></div>
			<div id="mainBrand">
				<ul>
					<li class="center">
						<div class="banner">
							<img src="../images/img/main_brand_banner.jpg" alt="" />
							<p>원두커피의 名家<span>JARDIN BRAND</span></p>
						</div>
					</li>
					<li class="left">
						<div class="img"><a href="#"><img src="../images/img/sample_main_brand.png" alt="Brand 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">6,000원</div>
					</li>
					<li class="right">
						<div class="img"><a href="#"><img src="../images/img/sample_main_brand.png" alt="Brand 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">6,000원</div>
					</li>
					<li class="nor">
						<div class="img"><a href="#"><img src="../images/img/sample_main_brand.png" alt="Brand 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">6,000원</div>
					</li>
					<li class="nor rewidth">
						<div class="img"><a href="#"><img src="../images/img/sample_main_brand.png" alt="Brand 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">6,000원</div>
					</li>
					<li class="nor fn">
						<div class="img"><a href="#"><img src="../images/img/sample_main_brand.png" alt="Brand 상품" /></a></div>
						<div class="name">쟈뎅 바리스타 벨벳<br/>에스프레소 원두커피</div>
						<div class="price">6,000원</div>
					</li>
				</ul>
			</div>

			<!-- //brand -->

			<!-- notice -->
			<div class="mtitle"></div>
			<div id="noticeBLock">
				<ul>
					<li class="first">
						<h3>NOTICE</h3>
						<div class="img"><img src="../images/img/sample_notice.jpg" alt="notice image" /></div>
						<ul>
							<li><a href="#">ㆍJARDIN UCC 투표 이벤트 참여해 주신…</a></li>
							<li><a href="#">ㆍ회원 이용약관 및 개인정보취급방침 개…</a></li>
							<li><a href="#">ㆍ8월 구매 사은행사 이벤트 당첨자 발표…</a></li>
						</ul>
					</li>
					<li class="cln">
						<h3 class="cen">CUSTOMER CENTER</h3>
						<div class="custCenter">
							<p class="phone">02.456.3881</p>
							<p class="day">오전 9시 ~ 오후 7시<br/>토/일요일 및 공휴일 제외</p>
							<p class="link">
								<a href="#">이용안내</a>
								<a href="#">FAQ</a>
								<a href="#">1:1문의</a>							
							</p>
						</div>
					</li>
					<li class="last">
						<h3>ENJOY COFFEE</h3>
						<div class="img"><img src="../images/img/sample_enjoy.jpg" alt="enjoy coffee" /></div>
						<p class="txt">커피를 언제 어디서나 맛있게 즐기는 방법을 소개해 드립니다!</p>
					</li>
				</ul>
			</div>
			<!-- //notice -->

			<!-- quickmenu -->
			<div id="quick">
				<div class="cart"><a href="#">장바구니</a></div>
				<div class="wish">
					<p class="title">위시 리스트</p>
					
					<div class="list">
						<ul>	
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
							<li><a href="#"><img src="../images/img/sample_wish.gif" alt="" /></a>
						</ul>
					</div>

					<div class="total">
						<a href="#none" class="wishLeft"><img src="../images/btn/wish_left.gif" alt="" /></a>
						 <span class="page">1</span> / <span class="sum">3</span>
						<a href="#none" class="wishRight"><img src="../images/btn/wish_right.gif" alt="" /></a>
					</div>

				</div>

				<div class="top"><a href="#">TOP&nbsp;&nbsp;<img src="../images/ico/ico_top.gif" alt="" /></a></div>
			</div>
			<script type="text/javascript">
			$(function(){
				
				$(window).scroll(function(){
					var tg = $("div#quick");
					var xg = $("div#mainContents");
					var limit = xg.height()- 165;
					var tmp = $(window).scrollTop();

					if (tmp > limit) {
						tg.css({"position" : "absolute","right" : "-150px","bottom" : "208px","top" : "auto"});
					}
					else {
						if (tmp < 150 ){
							tg.css({"position" : "fixed","top" : "600px" , "margin-left" : "940px","right" : "auto"});
						}else{
							tg.css({"position" : "fixed","top" : "400px" , "margin-left" : "940px","right" : "auto"});
						}
					}
				});

			});
			</script>
			<!-- //quickmenu -->

		</div>
		<!-- //main contents -->

	</div>
	<!-- //mainSection -->



<!-- foooter시작 -->
<%@include file="../sub/footer.jsp" %>
<!-- foooter끝 -->
	

</div>
</div>
</body>
</html>