<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="semi.hotel.model.vo.*"
	import="java.util.*"%>
    
<%
	
      ArrayList<RoomInfo> ri = (ArrayList<RoomInfo>)request.getAttribute("roomInfo");
	
%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/hotel/hotelReserve.css?ver=1">
<link rel="stylesheet" href="/lib/w3.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Great+Vibes" rel="stylesheet">
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body id="scroll">





	<section>
	
	<div style="width: 1200px; height: 1400px; margin-left:15%;">
	<div id="contents">
			<div id="contents-1">
				<div id="contentTitle">호텔예약 하기</div>
			</div>
		</div>
		
		<div id="reserveRoomInfo">
		<div id="reserveRoomInfoTitle">
		<div id="roomType">객실 유형</div>
		<div id="roomCapacity">정원</div>
		<div id="roomPrice">가격</div>
		<div id="roomChoice">객실 선택</div>
	</div>
		
	    <div id="hotelRoom1Info">
	    <div id="hotelRoom1Type">
	    <div id="hotelRoomTitle" style="padding-top:10%;"><%=ri.get(0).getRoomTitle() %></div>
	    <div id="hotelRoom1Type-1" style="padding-top:10%;"><%=ri.get(0).getRoomExplain() %></div>
	    </div>
	    <div id="hotelRoom1Capacity" style="padding-top:13%; font-size:15px"><%=ri.get(0).getRoomCapacity() %></div>
	    <div id="hotelRoom1Price"><%=ri.get(0).getRoomPrice() %></div>
	    <div id="hotelRoom1Choice">
	
	    <input type="radio" id="room1" name="hotelPrice" onclick="roomPrice(1);" style="width:20px; height:20px;" value=<%=ri.get(0).getRoomPrice()%>>
	   
	    </div>
	    </div>
	    
	    <div id="hotelRoom2Info">
	    <div id="hotelRoom2Type">
	    <div id="hotelRoomTitle2" style="padding-top:10%;"><%=ri.get(1).getRoomTitle() %></div>
	    <div id="hotelRoom2Type-1" style="padding-top:10%;"><%=ri.get(1).getRoomExplain() %></div>
	    </div>
	    <div id="hotelRoom2Capacity" style="padding-top:13%; font-size:15px"><%=ri.get(1).getRoomCapacity() %></div>
	    <div id="hotelRoom2Price"><%=ri.get(1).getRoomPrice() %></div>
	    <div id="hotelRoom2Choice">
	    
	     <input type="radio" id="room2" name="hotelPrice" onclick="roomPrice(2);" style="width:20px; height:20px;" value=<%=ri.get(1).getRoomPrice()%>>
	    
	    </div>
	    </div>
	    
	    <div id="hotelRoom3Info">
	    <div id="hotelRoom3Type">
	    <div id="hotelRoomTitle3" style="padding-top:10%;"><%=ri.get(2).getRoomTitle() %> </div>
	    <div id="hotelRoom3Type-1" style="padding-top:10%;"><%=ri.get(2).getRoomExplain() %></div>
	    </div>
	    <div id="hotelRoom3Capacity" style="padding-top:13%; font-size:15px"><%=ri.get(2).getRoomCapacity() %></div>
	    <div id="hotelRoom3Price"><%=ri.get(2).getRoomPrice() %></div>
	    <div id="hotelRoom3Choice">
	     
	      <input type="radio" id="room3" name="hotelPrice" onclick="roomPrice(3);" style="width:20px; height:20px;" value=<%=ri.get(2).getRoomPrice()%>>
	     
	    </div>
	    </div>
	    
	    <div id="hotelRoom4Info">
	    <div id="hotelRoom4Type">
	    <div id="hotelRoomTitle4" style="padding-top:10%;"><%=ri.get(3).getRoomTitle() %></div>
	    <div id="hotelRoom4Type-1" style="padding-top:10%;"><%=ri.get(3).getRoomExplain() %></div>
	    </div>
	    <div id="hotelRoom4Capacity" style="padding-top:13%; font-size:15px"><%=ri.get(3).getRoomCapacity() %></div>
	    <div id="hotelRoom4Price"><%=ri.get(3).getRoomPrice() %></div>
	    <div id="hotelRoom4Choice">
	  
	    <input type="radio" id="room4" name="hotelPrice" onclick="roomPrice(4);" style="width:20px; height:20px;" value=<%=ri.get(3).getRoomPrice()%>>
	  
	    </div>
	    </div>
		
		
	</div>
		
		<div id="hotelPayment">
		<div id="hotelPaymentTitle"></div>
		<div id="hotelPaymentContent" style="width:100%; height:300px; text-align:center; margin-top:10%;">
		<div id="hotelPriceInfo">객실 요금</div>
		<div id="hotelPaymentTotal"></div>
		<div id="hotelPayment-1">		
		<button type= "button" onclick = "payment();">결제 하기</button>
		</div><br><br>
		<div id="#hotelReserveDate">
		<p style = text-align:center;>날짜 조회:
        <input type="text" id="datepicker1">
        </div>
		</div>
	
</div>
	
    </section>
	<%@ include file="/views/main/footer.jsp" %>
	
	
	<script>
  $.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
  });

  $(function() {
    $("#datepicker1").datepicker();
  });

</script>

<script>
	function payment(){	
		window.open("hotelPayment.jsp","payment", "width=700,height=700,scrollbars=no,resizable=no,left=800,top=200");
	}
</script>


<script>
	
	function roomPrice(val){
		if(val==1){
			document.getElementById('hotelPaymentTotal').innerHTML = document.getElementById('room1').value;
		}
		else if(val==2){
			document.getElementById('hotelPaymentTotal').innerHTML = document.getElementById('room2').value;
		}
		else if(val==3){
			document.getElementById('hotelPaymentTotal').innerHTML = document.getElementById('room3').value;
		}
		else{
			document.getElementById('hotelPaymentTotal').innerHTML = document.getElementById('room4').value;
		}
	}
	
</script>

	
</body>
</html>