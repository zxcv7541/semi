<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="semi.travelready.model.vo.*" import="java.util.*" import="semi.login.model.vo.*" %>
<%
	SeoulImagePageData sipd=(SeoulImagePageData)request.getAttribute("SeoulImagePageData");
	ArrayList<SeoulImageFile> list=sipd.getNoticelist();
	SeoulUser su=(SeoulUser)session.getAttribute("user");
	int index = 0;
%>
    
<!DOCTYPE html>
<html>
<head>

<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link href="../../css/kfonts2.css" rel="stylesheet">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/main.js"></script>
		

<style>
*{margin:0; padding:0;font-family: 'Nanum Gothic', sans-serif;}
a
{text-decoration:none!important;color:black;}
     #pagecontent
    {
    	min-height:1000px;
    	margin-left:3%;
    	margin-right:3%;
    	padding-left:51px;
    	margin:o auto;
   
    }
    #content
    {
    margin:0 auto;
    width:960px;
    min-height:1000px;
    padding-left:0px;
    }
    
  .keyword-recommend a{
    display: inline-block;
    margin: 4px;
    color: #0171b0;
    line-height: 22px;
}


</style>
<script>


function contentChange(id){
	$.ajax({
		url : "/seoulImageBody",
		type : "get",
		data : {id:id},
		success : function(){
			location.href="/seoulImageBody?id="+id;
			
		},
		error : function(){
			console.log("실패");
		}
	});

	
	
}

function insert(){
	window.open("/views/travelReady/imagePop.jsp","_blank","width=500,height=200");
}


</script>

<body id="scroll">
<section>
<center>
<form class="form-inline" action="/seoulImageSearch" method="post">
<div style="height:150px; padding-top:50px; background-color: #f5f5f5;">
	
  <div class="form-group mx-sm-3">
    <input type="text" class="form-control" name="search">
  </div>
  <input type="submit" class="btn btn-primary" value="검색">
  <div class="keyword-recommend">
					<a href="/seoulImageSearch?search=광화문광장">광화문광장</a>
					<a href="/seoulImageSearch?search=경복궁">경복궁</a>
					<a href="/seoulImageSearch?search=동대문디자인플라자">동대문디자인플라자</a>
					<a href="/seoulImageSearch?search=문화역서울284">문화역서울284</a>
					<a href="/seoulImageSearch?search=삼청동">삼청동</a>
					<a href="/seoulImageSearch?search=북악스카이웨이">북악스카이웨이</a>
					</div>
  
  </div>
</form>
</center>
<div id="div1" style="width:100%; height:700px; display:none;"></div>
  	
	<div id="imagechange" class="container"> 
 <h1> 서울 관광 이미지   </h1>
 <%if(su!=null && su.getUserId().equals("admin")) {%>
 <botton class="btn btn-primary" onclick="insert();">등록</botton><%} %><h2>총<%=sipd.getRecordTotalCount()%></h2>
  <%for(SeoulImageFile sif:list){ 
  if(index<3){
	  if(index==0){
  %> <div class="row">
  <%} %>  

   
    <div class="col-sm-3 col-md-3">
      <div class="thumbnail">
        <img src="<%=sif.getImageViewPath()%>" alt="...">
          <div class="caption">
            <h3><%=sif.getTitle()%> </h3>
          
            <p><a href="/seoulImageDown?imageNo=<%=sif.getImageN0()%>" class="btn btn-primary" role="button">다운로드</a> 
            <a href="#" onclick="contentChange(<%=sipd.getCurrentPage()%>);" class="btn btn-default" role="button">보기</a></p>
        </div>
      </div>
    </div> 
   
	

	<%index++;}else { %>
	 <div class="col-sm-3 col-md-3">
      <div class="thumbnail">
        <img src="<%=sif.getImageViewPath()%>" alt="...">
          <div class="caption">
            <h3><%=sif.getTitle()%> </h3>
          
            <p><a href="/seoulImageDown?imageNo=<%=sif.getImageN0()%>" class="btn btn-primary" role="button">다운로드</a> 
            <a href="#" onclick="contentChange(<%=sipd.getCurrentPage()%>);" class="btn btn-default" role="button">보기</a></p>
        </div>
      </div>
    </div>
 </div><%index=0;} %>
 
 
 
 
 

 <%} %>
 </div>
	<div  id="navi" style="width:100%; height:50px; padding-top:30px; padding-bottom:50px; text-align:center;">
			<%if(sipd.getCurrentPage()>1){ %>
					<a class="btn btn-primary btn-lg" href="/seoulImage?currentPage=<%=sipd.getCurrentPage()-1%>"> < </a>
					<%} %>
					<%for(int i=sipd.getStartNavi(); i<=sipd.getEndNavi();i++){ 
					if(i==sipd.getCurrentPage()){%>
						<a class="btn btn-primary btn-lg" href='/seoulImage?currentPage=<%=i%>'><%=i%></a>
					<%}else{ %>
						<a class="btn btn-primary btn-lg" href='/seoulImage?currentPage=<%=i%>'><%=i%></a>
					<%} %>
				<%} %>
				
				<%if(sipd.getCurrentPage()<sipd.getPageTotalCount()){ %>
					<a class="btn btn-primary btn-lg" href="/seoulImage?currentPage=<%=sipd.getCurrentPage()+1%>"> > </a>
				<%} %>
				</div>

			

			
			</section>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  
    <script src="../../js/bootstrap.min.js"></script>
</body>
</html>