<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="/lib/w3.css">
  	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/main.js"></script>

</head>
<style>
.mySlides {display:none}
</style>

<body id="scroll">

<style>
* {	
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#wrap{
    margin-right : 15%;
    margin-top: 10%;
    margin-left: 15%;
    margin-bottom:10%;
	width:1200px;
	height:1800px;
	
}


#contents{
	width: 100%;
	height: 150px;
	background-color : RGB(0, 125, 195);
}

#contents-1{
	width: 70%;
	height: 100%;
	float : left;
}


#contentTitle {
	width: 100%;
	height: 50%;
	background-color : RGB(0, 125, 195);
	font-size : 40px;
	color : white;
}

#hotelAddress {
	width: 100%;
	height:50%;
	background-color : RGB(0, 125, 195);
	font-size : 20px;
	color : white;
	
}

#hotelPhoto{
	width:100%;
	height: 500px;
	border : 2px solid black;
	margin-top : 1%;
	}

#hotelMainPhoto {
	width:100%;
	height: 400px;
	padding-left : 25%;
	padding-right: 5%;
	padding-top : 4%;
	padding-bottom : 5%;
	background-color : #363636;
			
}
#hotelInfoSubPhoto{
	width:100%;
	height:100px;
	border : 2px solid black;
	background-color : #363636;
}
#hotelSubPhoto1{
	width:20%;
	height:100%;
	float : left;
	padding : 1%;
}
#hotelSubPhoto2{
	width:20%;
	height:100%;
	float: left;
	padding : 1%;
}
#hotelSubPhoto3{
	width:20%;
	height:100%;
	float: left;
	padding : 1%;
}
#hotelSubPhoto4{
	width:20%;
	height:100%;
	float: left;
	padding : 1%;
}

#hotelSubPhoto5{
	width:20%;
	height:100%;
	float: left;
	padding : 1%;
}

#hotelExplain{
	width: 100%;
	height : 500px;
	
}

#hotelName{
	width: 100%;
	height : 100px;
	border : 1px solid black;
}
#hotelTotalExplain{
	width: 100%;
	height : 236px;
	border : 1px solid black;
}
#hotelPrice{
	width: 100%;
	height : 300px;
    border : 1px solid black;	
}
#hotelPhoneAndGido{
	width:100%;
	height :100px;
	border : 1px solid black;
}
#contentFullGido {
	width: 100%;
	height: 400px;
	background-color:red;
}


</style>

	<%@ include file="/views/main/header.jsp" %>
	<section>
	<div id="wrap">
	<div id="contents">
	<div id="contents-1">
	<div id="contentTitle">호텔 아띠 충무로</div>
	<div id="hotelAddress">대한민국 > 서울  > 중구</div>
	</div>
	</div>
	
	
	<div id="hotelPhoto">
	<div id="hotelMainPhoto">
	<img class="mySlides" src="/image/bg1.jpg" height="300px" width="600px">
	<img class="mySlides" src="/image/bg2.jpg" height="300px" width="600px">
	<img class="mySlides" src="/image/bg3.jpg" height="300px" width="600px">
	<img class="mySlides" src="/image/menu.png" height="300px" width="600px">
	<img class="mySlides" src="/image/" height="300px" width="600px">
	
	</div>
	
	<div id="hotelInfoSubPhoto">
	<div id="hotelSubPhoto1">
	<img class="demo w3-border w3-hover-shadow" src="/image/bg1.jpg" height="100%" width="100%" onclick="currentDiv(1)"></div>
	<div id="hotelSubPhoto2">
	<img class="demo w3-border w3-hover-shadow" src="/image/bg2.jpg" height="100%" width="100%"; onclick="currentDiv(2)"></div>
	<div id="hotelSubPhoto3">
	<img class="demo w3-border w3-hover-shadow" src="/image/bg3.jpg" height="100%" width="100%" onclick="currentDiv(3)"></div>
	<div id="hotelSubPhoto4">
	<img class="demo w3-border w3-hover-shadow" src="/image/menu.png" height="100%" width="100%" onclick="currentDiv(4)"></div>
	<div id="hotelSubPhoto5">
	<img class="demo w3-border w3-hover-shadow" src="/image/" height="100%" width="100%" onclick="currentDiv(5)"></div>
	
	
	</div>
	</div>
	
	<div id="hotelExplain">
	<div id="hotelName"><h2> 호텔이름</h2>  <br><h3>KH정보교육원</h3></div>
	<div id="hotelTotalExplain"><h2>호텔 설명 </h2><br>서울 중심에 자리한 럭셔리 호텔인 서울 신라 호텔은 3호선 동대입구역 5번 출구에서 도보로 
	5분 거리에 있으며 명동과 동대문 방면으로 무료 셔틀버스를 운행하고 있습니다. 호텔에서 번화한 명동 거리까지는 차로 15분, 
	시청까지는 차로 약 20분이 소요됩니다.호텔 내에 유명 작가들의 조각상이 모여있는 야외조각공원과 겔랑 스파가 있어 여유로운 휴식 시간을
	 보내실 수 있으며 피트니스 센터, 사우나, 수영장 등도 있어 다양한 운동을 즐기실 수 있습니다. 뿐만 아니라, 비즈니스 고객님들을 위한
	  미팅룸과 비즈니스 센터도 있으며 프런트데스크에서는 환전, 유료 세탁, 룸서비스 등을 이용하실 수 있습니다. 또한, 투숙객에 한하여 
	  무료 주차가 가능하며 유료로 발렛파킹을 이용하실 수 있습니다.총 426개의 객실을 보유하고 있으며 객실에 따라 남산 또는 영빈관
	   전망을 감상하실 수 있습니다. 럭셔리하고 모던한 인테리어가 돋보이는 모든 객실에는 TV, 미나바, 생수 등이 있으며 욕실에는 샤워부스,
	    욕조, 비데, 헤어드라이어 등이 완비되어 있습니다. 또한, 이그제큐티브 이상 객실에서는 이규제큐티브 라운지를 이용하실 수 있습니다.
	    호텔 내에 중식, 일식, 한식, 프렌치, 뷔페 등 다양한 메뉴를 선보이는 5개의 레스토랑과 1개의 바가 있어 다이닝 선택의 폭이 넓습니다. 
	    매일 아침 조식은 1층 파크뷰에서 즉석에서 조리한 뷔페를 즐기실 수 있으며 별도의 요금이 발생합니다.</div>
	<div id="hotelPrice"><h2>호텔 가격(방마다)</h2> <h4><br> 싱글룸 : 15만원 <br> 더블룸 : 17만원   <br> 패밀리룸 : 19만원  <br> 스텐다드룸 : 16만원</h4></div>
	
	<div id=""></div>
	<div id="hotelPhone"><h2>호텔 전화번호</h2> <br><h3>010 - 1111- 2222</h3></div>
	
	<div id="contentGido">상세  지도</div>
	
	</div>
	</section>
	<%@ include file="/views/main/footer.jsp" %>

	
	<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-border-red", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-border-red";
}

var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 2 seconds
}
</script>
	
	
	
</body>
</html>