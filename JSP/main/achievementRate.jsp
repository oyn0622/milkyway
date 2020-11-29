<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SK SUNNY 은하수</title>
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/fixedmenutab.css"/>
    <link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/color.css"  />
    <link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/outerdesign.css"  />
    <link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/modalforAR.css"/>

    <style>
        @import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
	        * {box-sizing: border-box}

.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
</head>
<body>
    <a href="#ex1" rel="modal:open"><img src="이용안내서.png" style="width: 56px; position:fixed;top:84%;left:6%;"></img>
    </a>
    <a href="#ex1" rel="modal:open" style="position: absolute;top:85%;left:11%;text-decoration: none;color:black;font-weight: 600;">사이트</a>
    <a href="#ex1" rel="modal:open" style="position: absolute;top:88%;left:11%;text-decoration: none;color:black;font-weight: 600;">이용안내서</a></p>
  
  <div id="ex1" class="modal">
    <div class="slideshow-container">
        <div class="firstfake">
            <p></p>
        </div>
  
        <div class="mySlides fade">
          <img src="사이트이용안내서/공약이행률/1.png" style="width:100%;height:61%;">
          
        </div>
        
        <div class="mySlides fade">
          <img src="사이트이용안내서/공약이행률/2.png" style="width:100%;height: 61%;">
        </div>
        
        <div class="mySlides fade">
          <img src="사이트이용안내서/공약이행률/3.png" style="width:100%;height: 61%;">
        </div>
      
          
          
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
        
        </div>
        <br>
        
        <div style="text-align:center">
          <span class="dot" onclick="currentSlide(-1)"></span> 
          <span class="dot" onclick="currentSlide(0)"></span> 
          <span class="dot" onclick="currentSlide(1)"></span>
  
        </div>
    <a href="#" rel="modal:close" style="text-decoration: none;color:rgb(247, 95, 95);font-weight: 600;margin-left:90%;">닫기</a>
  </div>
	    <!-- 메뉴 -->
		<nav role="navigation">
			<ul id="main-menu">
				<li><a href="${contextPath }/" style="padding:0;"><img src="${contextPath }/resources/image/logo/로고.png" style="width:240px;transform:translateY(-16%);"></a></li>
				<li><a href="#">은하수 프로젝트</a>
				<ul id="sub-menu">
					<li><a href="${contextPath }/introduce" aria-label="subemnu">은하수 소개</a></li>
					<li><a href="${contextPath }/guideline" aria-label="subemnu">선거 가이드라인</a></li>
				</ul>
				</li>
				<li><a href="#">제21대 국회의원 공약보기</a>
				<ul id="sub-menu">
					<li><a href="${contextPath }/" aria-label="subemnu">선거공보물 보기</a></li>
					<li><a href="${contextPath }/category" aria-label="subemnu">분야별 공약 보기</a></li>
				</ul>
				</li>
				<li><a href="${contextPath }/achievementRate">지난 공약 이행률 보기</a></li>
	
			</ul>
		  </nav>

    <!-- 콘텐츠 영역 -->
    <span class="map">
            <!-- 로고 -->
          <span class="logo"> 
            <a href="${contextPath }/achievementRate" style="text-decoration:none; color:black; line-height: 73px;">
                제20대 서울시 <br>국회의원 공약 이행률 보기
            </a>
          </span>
          <div style="position: absolute;top:46%;left:8%;color:grey;font-weight: 400;">본 자료는 한국매니페스토실천본부(http://manifesto.or.kr)의<br>
            '2020년 20대 국회의원 공약이행자체평가표 모음'을 기초로 하여 제작되었습니다.<br>일부 국회의원은 공약 이행표가 제공되지 않아 서비스에서 제한되었습니다.</div>

        <!-- 팝업창 -->
        <div id="open-moda3" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/금태섭.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/한정애.png" style="margin-left:10px;"></img>
                </a>
            </div>
        </div>
	        <!-- 팝업창 -->
        <div id="open-moda1" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="emptycandidates" style="margin-left:27%;padding:2%;">
                해당 국회의원은 자료가 제공되지 않아 서비스를 이용할 수 없습니다. 
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda2" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="emptycandidates" style="margin-left:27%;padding:2%;">
                해당 국회의원은 자료가 제공되지 않아 서비스를 이용할 수 없습니다. 
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda4" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>
            <div class="candidates" style="margin-left:37%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/박용진.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda5" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>
            <div class="candidates" style="margin-left:37%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/이훈.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda6" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>
            <div class="candidates">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/고용진.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/우원식.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/김성환.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda7" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:37%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/김병기.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda8" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:37%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/신경민.png"></img>
                </a>

            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda9" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>
            <div class="candidates" >
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/박인숙.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/최재성.png"></img>
                </a> 
                <a href="">
                    <img src="${contextPath }/resources/image/id_card2/남인순.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda10" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/노웅래.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html" style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/손혜원.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda11" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/안규백.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/민병두.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda12" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/우상호.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/김영호.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda13" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/김성식.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html" style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/오신환.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda14" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/이혜훈.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/박성중.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda15" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/이인영.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/박영선.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda16" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:37%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/인재근.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda17" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:37%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/전혜숙.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda18" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/진선미.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/심재권.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda19" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>
            <div class="candidates"style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/전현희.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/이은재.png" style="margin-left:10px;"></img>
                </a>                
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda20" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/황희.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/김용태.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda21" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/유승희.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/기동민.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda22" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/박주민.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/강병원.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda23" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:37%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/박홍근.png"></img>
                </a>
            </div>
        </div>
        <!-- 팝업창 -->
        <div id="open-moda24" class="modal-window">
            <a href="#modal-close" title="Close" class="modal-close">지도로 돌아가기 X</a>    
            <div class="candidates" style="margin-left:22%;">
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html">
                    <img src="${contextPath }/resources/image/id_card2/홍익표.png"></img>
                </a>
                <a href="http://www.manifesto.or.kr/manifesto_data/20200210/20na/01.html"style="margin-left:10px;">
                    <img src="${contextPath }/resources/image/id_card2/지상욱.png"></img>
                </a>
            </div>
        </div>
        <!-- 지도 -->
        <svg xmlns="http://www.w3.org/2000/svg" version="1.2" baseProfile="tiny" viewBox="0 16 349 300" stroke-linecap="round" stroke-linejoin="round"><defs xmlns="http://www.w3.org/2000/svg">    <filter id="outline">        <feMorphology in="SourceAlpha" result="morp" operator="dilate" radius="1"></feMorphology>        <feFlood flood-color="#000000" flood-opacity="0.7" result="flood"></feFlood>        <feComposite in="flood" in2="morp" operator="in" result="outline"></feComposite>        <feMerge>            <feMergeNode in="outline"></feMergeNode>            <feMergeNode in="SourceGraphic"></feMergeNode>        </feMerge>    </filter></defs>
            <g id="서울특별시-sig-main">
              
            <a xlink:href="#open-moda1" xlink:title="종로구" target="_parent">
                <path d="M 202.3661 134.759 202.5832 134.7557 204.6098 134.0712 204.7374 134.2312 204.7859 134.228 204.869 134.2981 204.9079 134.3343 204.9169 134.3437 204.9378 134.3621 204.9681 134.3862 204.9777 134.398 204.9867 134.434 205.1847 134.58 205.2948 134.5511 205.4544 134.5163 205.565 134.4843 205.6746 134.4541 205.7349 134.4377 205.754 134.4475 205.8226 134.5453 205.9738 134.6442 205.9885 134.6901 206.0792 134.908 206.0616 135.1058 206.066 135.1426 206.1416 135.4509 206.1466 135.4551 206.1586 135.4632 206.2279 135.5123 206.3043 135.5644 206.31 135.5717 206.3201 135.5892 206.3889 135.7145 206.4059 135.7218 206.4261 135.9089 206.4227 135.9725 206.4239 136.004 206.4418 136.0117 206.4457 136.0138 206.4571 136.0537 206.5578 136.304 206.5915 136.3761 206.6075 136.431 206.6376 136.5067 206.7122 136.5434 206.8172 136.6216 207.1279 137.1048 207.1372 137.1364 206.7021 137.9584 206.7008 137.9821 206.7833 138.1082 206.7633 138.1232 206.7891 138.144 206.8703 138.2487 206.9392 138.3317 207.0034 138.4788 207.2328 138.3945 207.6148 138.4012 207.6517 138.3793 207.6778 138.364 207.7457 138.3399 207.8004 138.2646 208.0326 138.179 207.9372 138.0189 207.9696 138.0019 208.0564 137.9596 208.401 137.7954 208.4094 137.7912 208.4448 137.7742 208.4755 137.7595 208.4837 137.7557 208.4878 137.7536 208.4922 137.7515 208.5112 137.7423 208.6046 137.6971 208.6211 137.6891 208.671 137.6649 208.6979 137.6517 208.7647 137.619 208.771 137.6159 208.7961 137.6025 208.9254 137.5348 209.065 137.4571 209.1234 137.4321 209.1872 137.4014 209.3343 137.3417 209.4402 137.3092 209.6154 137.3031 209.6594 137.3049 209.7253 137.2956 209.7491 137.3043 209.7643 137.3247 209.8166 137.3672 209.8245 137.3722 209.8489 137.407 209.8631 137.4155 209.9909 137.4724 210.0716 137.5057 210.0872 137.51 210.1501 137.5698 210.1924 137.6245 210.2541 137.6965 210.3531 137.7593 210.4336 137.796 210.3955 137.851 210.3858 137.864 210.351 137.9113 210.5242 138.2663 210.5926 138.2666 210.6328 138.2097 210.6955 138.1167 210.7085 138.091 210.7132 138.0879 210.7192 138.3836 210.7244 138.6151 210.7458 139.5209 210.7577 140.0705 210.7716 140.4942 210.773 140.5492 210.8515 143.743 206.7219 145.2248 206.5994 145.2992 204.4563 145.7415 204.3908 145.7432 194.5839 145.9154 194.2004 146.0025 191.4238 146.5887 191.285 146.6081 191.1227 146.6288 176.2089 145.8086 169.1982 148.9882 169.1816 149.0082 169.0578 149.1613 162.1338 136.1593 162.8507 119.1848 157.2602 107.6143 156.2512 95.9069 163.2952 90.1927 167.6543 89.3934 168.9202 88.9788 175.7892 88.2003 175.5849 88.6299 176.5073 90.6094 176.6995 90.589 178.0225 90.4433 178.0375 90.4452 178.6669 90.7413 178.75 90.7772 178.8217 90.8078 178.8355 90.8139 178.844 90.8197 179.1317 91.1236 179.1696 91.2437 179.3169 91.7106 180.4058 94.8941 180.5093 95.0553 182.4649 102.7739 182.9191 103.2343 183.1024 103.5721 183.9582 104.6523 183.6257 105.3501 183.6585 105.539 184.0535 113.4563 183.968 113.8766 183.4274 114.2199 183.2952 114.3962 180.9385 115.4889 179.9943 115.8817 179.5381 116.0693 179.3939 116.2088 177.9384 116.6367 177.7519 116.8229 177.5173 117.2763 177.3308 117.3465 177.1303 118.0986 177.1277 118.1215 177.1275 118.3908 176.9738 118.8139 176.9234 118.9876 176.8395 119.1394 176.6086 119.4943 176.6393 119.5333 176.7451 119.6707 177.0361 119.7244 177.5172 119.705 177.6721 119.8758 177.8105 119.9318 177.9681 120.5391 178.027 120.6192 178.3632 120.9038 178.5447 120.9444 179.4787 121.3553 179.5479 121.4031 179.6861 121.4255 179.771 121.5012 180.1092 121.8936 180.1588 121.9116 181.5637 122.5046 181.8403 122.7368 182.3263 122.7956 182.4085 122.7828 182.4281 122.7769 182.6027 122.7121 182.6884 122.722 183.0084 122.7302 183.2649 122.9117 183.3633 123.0874 183.3517 123.1377 183.5128 123.3557 183.5136 123.4289 183.5511 123.6035 183.6203 123.8198 183.9345 124.3092 184.2019 124.3294 185.0487 124.9729 185.2705 125.0648 189.0038 125.2973 189.0099 125.3122 190.0117 125.1267 190.1188 125.0183 190.1538 124.9791 190.2376 124.8354 190.3152 124.7787 190.3742 124.7902 190.6659 124.8572 190.8603 124.9201 190.9204 124.9269 191.0893 124.9481 191.1584 124.9297 191.353 124.8387 191.4223 124.8414 191.5013 124.8426 192.0039 124.7833 192.0187 124.7773 192.0992 124.7402 192.1701 124.7197 192.3062 124.6829 192.4438 124.6492 192.5853 124.6171 192.7965 124.6183 192.8355 124.6336 192.8507 124.6384 192.893 124.6516 193.144 124.7476 193.5613 124.8356 193.663 124.8583 194.0565 124.7736 194.1201 124.7682 194.2876 124.7617 194.4349 124.7813 194.5613 124.9723 194.7427 125.1435 194.795 125.2212 195.0042 125.6626 194.9402 126.1037 194.9114 126.1705 194.8689 126.2482 194.8598 126.2677 194.8224 126.3851 194.8167 126.4075 194.802 126.4033 194.8063 126.591 194.8074 126.6671 194.8039 126.7755 194.9486 126.8934 195.0968 127.0435 195.1975 127.208 195.3007 127.4091 195.444 127.8027 195.6528 127.9488 195.795 128.0559 195.8817 128.0957 196.185 128.2139 196.2145 128.2461 196.2304 128.2814 196.2717 128.3887 196.2645 128.468 196.3036 128.6389 196.3391 128.685 196.4502 128.7343 196.6495 128.8266 196.5775 129.0087 196.6592 128.9576 198.5261 131.0576 198.6024 131.1721 198.8587 132.2194 198.9013 132.4066 198.6634 134.0222 198.7376 134.1026 199.5448 135.0097 199.5794 135.0597 202.3661 134.759 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Jongno-gu" data-value="종로구"></path>
            </a>    

            <a   xlink:href="#open-moda24" xlink:title="중구" target="_parent">
                <path d="M 169.0578 149.1613 169.1816 149.0082 169.1982 148.9882 176.2089 145.8086 191.1227 146.6288 191.285 146.6081 191.4238 146.5887 194.2004 146.0025 194.5839 145.9154 204.3908 145.7432 204.4563 145.7415 206.5994 145.2992 206.7219 145.2248 210.8515 143.743 210.8709 143.7496 210.9509 145.147 210.9538 144.147 210.8709 143.7496 217.9883 145.0752 218.8262 144.2689 224.5212 142.8347 236.8952 152.7591 246.9264 154.9829
                247.9198 155.4949 243.2511 165.7374 240.6508 171.4522 236.3584 180.8861 234.873 184.2218 227.4496 178.7483 227.3784 178.6938 222.798 177.2189 220.7738 177.1939 217.7123 177.18 216.8172 177.1766 210.1556 177.1642 209.2656 177.1547 209.0657 177.1543 208.473 177.4897 206.3043 178.8321 200.1216 169.4093 196.2261 167.7172 200.1216 169.4093 197.2041 167.5082 198.0326 165.6407 196.974 165.1797 196.8852 164.1007 196.7488 163.8186 196.736 163.7782 196.7217 163.7653 196.7216 163.7654 196.7215 163.7653 196.0462 163.9393 195.6336 164.287 195.6183 164.2918 195.6066 164.2949 195.4762 164.2887 195.1435 164.22 195.0001 163.9947 194.7659 163.8952 194.7657 163.8952 194.5213 163.9236 194.3115 164.0437 192.2877 164.2194 191.1195 165.3004 190.8246 166.2918 190.2574 166.4264 190.2524 166.4277 189.9978 166.4879 189.9868 166.4876 189.6844 166.3976 189.4271 166.2479 186.6786 162.8721 177.9135 160.0747 173.2093 159.3169 173.2091 159.3169 170.8363 158.5764 168.2678 159.9607 166.5373 161.7034 166.0943 162.0815 165.9708 162.1872 165.7724 162.3562 165.7918 162.3068 165.797 162.2833 165.8183 162.2657 165.8182 162.2655 165.8184 162.2653 165.7549 161.2259 165.5375 160.0534 165.4842 159.6706 165.3698 159.3486 165.3734 159.1758 165.5222 159.0426 165.645 158.6692 165.894 158.3191 166.0733 158.2627 166.5472 157.6053 166.6067 157.45 166.6067 157.4498 166.6001 157.3626 166.587 157.3195 166.3259 156.9287 166.3211 156.3593 165.6121 155.96 165.2573 155.9933 165.3297 155.4715 165.3177 155.4313 165.3178 155.4313 165.3237 155.4306 165.4643 155.411 165.7858 155.3655 166.2645 155.2974 166.4515 155.2804 166.523 155.2625 169.1366 153.3713 169.5847 153.1564 170.1077 153.0551 171.0762 152.7326 171.0761 152.7323 171.0762 152.7322 170.9788 152.4957 170.7086 151.8605 169.6895 150.0365 169.0578 149.1613 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Jung-gu" data-value="중구"></path>
            </a>
            
            <a xlink:href="#open-moda2" xlink:title="용산구" target="_parent">
                <path d="M 165.7723 162.3565 165.7724 162.3562 165.9708 162.1872 166.0943 162.0815 166.5373 161.7034 168.2678 159.9607 170.8363 158.5764 173.2091 159.3169 173.2093 159.3169 177.9135 160.0747 186.6786 162.8721 189.4271 166.2479 189.6844 166.3976 189.9868 166.4876 189.9978 166.4879 190.2524 166.4277 190.2574 166.4264 190.8246 166.2918 191.1195 165.3004 192.2877 164.2194 194.3115 164.0437 194.5213 163.9236 194.7657 163.8952 194.7659 163.8952 195.0001 163.9947 195.1435 164.22 195.4762 164.2887 195.6066 164.2949 195.6183 164.2918 195.6336 164.287 196.0462 163.9393 196.7215 163.7653 196.7216 163.7654 196.7217 163.7653 196.736 163.7782 196.7488 163.8186 196.8852 164.1007 196.974 165.1797 198.0326 165.6407 197.2041 167.5082 200.1216 169.4093 206.3043 178.8321 199.7298 186.5737 198.1753 188.5382 186.4715 198.0766 182.6476 204.1158 182.6366 204.1233 181.9735 204.1242 181.6186 204.126 181.2924 204.1261 181.2922 204.1261 180.9375 204.124 180.3925 204.1148 180.3379 204.1143 180.1511 204.113 180.151 204.113 180.1509 204.113 179.6847 204.1111 179.2934 204.1092 179.1042 204.102 179.104 204.102 178.8558 204.1007 178.8556 204.1007 177.2215 204.08 177.2087 204.0787 175.055 203.6407 164.72 197.6188 159.9536 195.2086 159.0231 194.8655 158.2926 194.5689 156.7923 193.9683 156.6407 193.9024 156.5795 193.8801 156.4903 193.8473 156.4056 193.8162 156.4056 193.8161 156.4081 193.3491 156.4169 191.6806 156.4353 188.2217 156.4478 185.6786 156.4503 185.2145 156.4511 185.007 156.451 185.0068 156.451 185.0067 154.4507 181.6888 153.2632 179.8041 153.2364 179.7617 152.6089 178.7703 152.5848 178.7322 152.6303 178.6571 152.6413 178.6392 152.8386 178.3157 152.9702 177.6386 157.2808 176.5492 160.8356 173.5121 162.403 168.2581 164.1147 167.1378 165.6817 165.0655 166.7811 164.9149 166.9093 164.0172 166.9091 164.0171 166.9092 164.0168 166.6525 163.8442 166.2872 163.0244 166.1371 162.8448 166.0833 162.8093 165.9172 162.6223 165.811 162.5146 165.7959 162.441 165.7909 162.4209 165.7721 162.357 165.7723 162.3565 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Yongsan-gu" data-value="용산구"></path>
            </a>
            
            <a   xlink:href="#open-moda17" xlink:title="광진구" target="_parent">
                <path d="M 234.873 184.2218 236.3584 180.8861 240.6508 171.4522 243.2511 165.7374 247.9198 155.4949 246.9264 154.9829 246.9326 154.9678 247.14 154.3192 247.1418 154.3137 248.4124 150.404 249.6434 148.5632 251.1057 144.5608 251.2639 143.9774 251.2816 143.9619 260.2559 146.031 263.4881 145.0627 266.9449 143.2332 267.87 142.4591 267.8783 142.45 267.9901 142.2973 267.9902 142.2971 270.4441 144.5073 268.1758 153.5788 268.6501 155.5123 270.4243 157.3067 270.9008 158.3664 271.2503 158.4478 271.2504 158.4478 271.7197 158.4195 271.9823 158.3338 278.5116 158.0848 275.7463 163.9828 273.9556 170.6525 259.8824 185.554 250.1386 189.6705 243.1764 187.7234 241.6795 187.2676 241.6705 187.266 234.873 184.2218 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Gwangjin-gu" data-value="광진구"></path>
            </a>
            <a   xlink:href="#open-moda11" xlink:title="동대문구" target="_parent">
                <path d="M 210.8515 143.743 210.773 140.5492 210.7716 140.4942 210.7577 140.0705 210.7458 139.5209 210.7244 138.6151 210.7192 138.3836 210.7132 138.0879 210.7748 138.0074 210.809 137.9221 210.8108 137.7542 210.8369 137.7121 210.8531 137.6986 210.86 137.6929 210.8745 137.6808 211.1346 137.4592 211.2424 137.3659 211.2509 137.3587 211.2548 137.3551 211.2653 137.346 211.4248 137.2081 211.6531 137.012 211.73 136.9556 212.0746 136.6686 212.2156 136.552 212.5417 136.2769 213.1848 135.7257 213.2375 135.6783 215.0167 134.1627 215.0473 134.1242 215.0672 134.1139 215.3426 133.8878 215.4514 133.7976 216.2759 132.6588 216.5001 132.3477 216.5403 132.2885 216.6588 132.0365 216.6764 131.998 216.7054 131.934 216.7872 131.8247 216.8344 131.76 216.8402 131.7512 216.8573 131.7184 216.9449 131.5526 216.973 131.4899 216.9787 131.4646 216.995 131.3928 217.0109 131.3269 217.0375 131.3187 217.0564 131.3292 217.0618 131.3285 217.0888 131.3171 217.2191 131.2422 217.2419 131.2197 217.3166 131.1695 217.3353 131.1597 217.3634 131.1418 217.3865 131.1128 217.4831 131.0476 217.4976 131.0396 217.5011 131.0318 217.4708 130.9654 217.4531 130.9478 217.4456 130.9395 217.4072 130.9179 217.3843 130.9136 218.5142 129.5538 218.6734 129.3369 218.7691 129.2334 218.9813 129.0035 219.0129 128.969 219.109 128.8632 219.149 128.8191 219.2016 128.7623 219.2269 128.7366 220.2858 127.3256 220.4627 126.9362 220.4909 126.9145 220.4715 126.6688 220.4705 126.6576 220.4681 126.6336 220.4654 126.6007 220.4152 126.0063 220.4202 125.9469 221.2815 125.9079 223.7761 122.1647 224.0077 121.9232 224.0605 121.9522 224.07 121.9617 224.5775 121.0852 224.5889 121.0903 224.7613 121.0178 224.81 120.9968 226.6424 121.1795 226.7409 121.1854 226.7469 121.1842 226.7516 121.1823 226.91 121.114 227.2946 120.9582 227.4999 121.1232 228.2071 121.4883 228.6029 121.3879 230.0816 118.7663 230.1002 118.7328 230.1587 118.6239 230.4164 118.0592 231.9327 117.3895 232.1412 117.7055 237.9489 115.6051 238.0265 115.4986 238.0864 115.238 238.0594 115.0418 238.3015 114.7102 238.5116 114.6031 238.5504 114.6471 239.0507 113.9493 239.4143 113.3688 239.4381 113.3462 239.4826 113.343 239.5384 113.3444 239.5844 113.3152 239.5979 113.3064 239.5886 113.2203 239.6057 113.1323 239.6142 113.1368 239.6452 113.1197 240.2705 113.0193 240.2767 113.0191 243.4438 112.0413 243.476 112.0256 244.435 111.6271 244.4385 111.6232 244.682 111.5001 244.7236 111.456 245.2613 111.1651 245.2967 111.1713 245.3583 111.1836 245.4136 111.1766 245.5572 111.3929 245.59 111.391 245.6303 111.3886 245.6416 111.3905 245.7573 111.0879 245.7921 110.9904 246.1525 110.8445 246.1626 111.0896 246.1648 111.1287 246.231 111.7172 246.2627 111.965 246.2692 112.0315 246.2733 112.0691 247.4064 117.1374 247.1754 117.6873 245.916 119.1804 245.21 120.0067 244.9135 122.0712 244.8941 122.2294 244.898 122.3384 244.9013 122.4202 245.7257 124.8963 245.8374 125.4147 245.8114 125.9104 245.745 126.2807 245.7187 126.3539 245.7093 126.3799 245.7069 126.3864 245.669 126.4928 245.6627 126.511 245.6578 126.5282 245.6481 126.5623 245.6379 126.5985 245.6317 126.6206 245.6224 126.6534 245.5269 126.9882 245.4654 127.2034 245.4949 127.3355 245.5171 127.5961 245.7214 127.9298 245.739 127.9521 245.768 127.9712 245.8243 128.0086 245.8507 128.0194 245.8803 128.0321 245.9354 128.066 245.942 128.0694 245.9464 128.0718 245.951 128.0744 245.9659 128.0823 245.9701 128.0844 246.0864 128.1818 246.2858 128.5282 246.8519 129.7834 246.859 129.797 246.9011 129.864 246.9192 129.893 246.9243 129.9029 247.0256 130.1107 247.0222 130.1631 247.0219 130.1746 247.2025 130.3823 247.2284 130.4043 247.0052 131.2978 246.9779 131.4072 246.8732 131.8167 246.867 131.8412 247.1357 132.2287 247.3117 132.4836 247.3749 132.5751 247.5071 132.7649 247.5118 132.7722 248.1413 133.7401 248.1422 133.7453 248.1407 133.7513 248.1416 133.756 248.1609 133.7843 248.3991 134.1435 249.8097 136.1693 249.8214 136.2033 249.9255 136.5696 249.9267 136.5745 249.9763 136.8212 249.9772 136.8261 249.9827 136.8572 249.9833 136.8616 250.1696 138.6518 250.1714 138.6695 250.1781 138.7308 250.4691 141.6353 250.4698 141.6426 250.5513 142.4561 250.5528 143.0015 251.2294 143.9296 251.2816 143.9619 251.2639 143.9774 251.1057 144.5608 249.6434 148.5632 248.4124 150.404 247.1418 154.3137 247.14 154.3192 246.9326 154.9678 246.9264 154.9829 236.8952 152.7591 224.5212 142.8347 218.8262 144.2689 217.9883 144.0752 210.8709 143.7496 210.8515 143.743 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Dongdaemun-gu" data-value="동대문구"></path>
            </a>
            <a   xlink:href="#open-moda23" xlink:title="중랑구" target="_parent">
                <path d="M 267.9902 142.2971 267.9901 142.2973 267.8783 142.45 267.87 142.4591 266.9449 143.2332 263.4881 145.0627 260.2559 146.031 251.2816 143.9619 251.2294 143.9296 250.5528 143.0015 250.5513 142.4561 250.4698 141.6426 250.4691 141.6353 250.1781 138.7308 250.1714 138.6695 250.1696 138.6518 249.9833 136.8616 249.9827 136.8572 249.9772 136.8261 249.9763 136.8212 249.9267 136.5745 249.9255 136.5696 249.8214 136.2033 249.8097 136.1693 248.3991 134.1435 248.1609 133.7843 248.1416 133.756 248.1407 133.7513 248.1422 133.7453 248.1413 133.7401 247.5118 132.7722 247.5071 132.7649 247.3749 132.5751 247.3117 132.4836 247.1357 132.2287 246.867 131.8412 246.8732 131.8167 246.9779 131.4072 247.0052 131.2978 247.2284 130.4043 247.2025 130.3823 247.0219 130.1746 247.0222 130.1631 247.0256 130.1107 246.9243 129.9029 246.9192 129.893 246.9011 129.864 246.859 129.797 246.8519 129.7834 246.2858 128.5282 246.0864 128.1818 245.9701 128.0844 245.9659 128.0823 245.951 128.0744 245.9464 128.0718 245.942 128.0694 245.9354 128.066 245.8803 128.0321 245.8507 128.0194 245.8243 128.0086 245.768 127.9712 245.739 127.9521 245.7214 127.9298 245.5171 127.5961 245.4949 127.3355 245.4654 127.2034 245.5269 126.9882 245.6224 126.6534 245.6317 126.6206 245.6379 126.5985 245.6481 126.5623 245.6578 126.5282 245.6627 126.511 245.669 126.4928 245.7069 126.3864 245.7093 126.3799 245.7187 126.3539 245.745 126.2807 245.8114 125.9104 245.8374 125.4147 245.7257 124.8963 244.9013 122.4202 244.898 122.3384 244.8941 122.2294 244.9135 122.0712 245.21 120.0067 245.916 119.1804 247.1754 117.6873 247.4064 117.1374 246.2733 112.0691 246.2692 112.0315 246.2627 111.965 246.231 111.7172 246.1648 111.1287 246.1626 111.0896 246.1525 110.8445 245.525 103.6481 246.232 103.142 246.2104 102.9023 246.2768 102.8064 246.3501 102.7651 246.4253 102.7233 246.4258 102.723 246.7082 102.6335 246.7593 102.6174 246.7681 102.6151 246.8076 102.6067 246.8283 102.6021 246.8316 102.6013 246.8466 102.5981 246.8542 102.6254 246.8646 102.656 246.8648 102.6559 247.0077 102.6075 247.7534 102.491 248.4717 102.3329 249.4873 102.0315 253.8367 100.1713 254.8386 99.9816 256.4286 99.3474 256.8979 99.2399 257.262 99.1675 257.466 99.1681 257.7092 99.1879 258.2056 99.3031 258.6399 99.5077 258.8016 99.5529 258.8504 99.5605 258.8505 99.5604 258.8506 99.5605 258.9 99.5433 258.9391 99.5213 259.0548 99.3749 259.2028 99.2259 259.248 99.2638 259.3265 99.3312 259.4317 99.4812 259.751 99.7775 261.3032 100.5018 261.8633 100.9887 262.1756 101.1726 262.368 101.2481 262.509 101.2953 262.5091 101.2953 262.5092 101.2953 262.8365 101.2522 263.4266 100.3945 264.7126 100.3786 266.6484 99.1154 268.7654 99.4663 274.2428 99.0356 274.8993 98.8631 275.2269 98.5705 275.2694 98.54 275.2695 98.5399 278.5793 99.9583 280.1387 101.4916 279.8557 122.2231 269.898 135.9795 268.1877 140.1614 268.2615 140.9994 268.0033 141.7155 268.0356 142.2405 267.9902 142.2971 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Jungnang-gu" data-value="중랑구"></path>
            </a>
            <a   xlink:href="#open-moda21" xlink:title="성북구" target="_parent">
                <path d="M 210.7132 138.0879 210.7085 138.091 210.6955 138.1167 210.6328 138.2097 210.5926 138.2666 210.5242 138.2663 210.351 137.9113 210.3858 137.864 210.3955 137.851 210.4336 137.796 210.3531 137.7593 210.2541 137.6965 210.1924 137.6245 210.1501 137.5698 210.0872 137.51 210.0716 137.5057 209.9909 137.4724 209.8631 137.4155 209.8489 137.407 209.8245 137.3722 209.8166 137.3672 209.7643 137.3247 209.7491 137.3043 209.7253 137.2956 209.6594 137.3049 209.6154 137.3031 209.4402 137.3092 209.3343 137.3417 209.1872 137.4014 209.1234 137.4321 209.065 137.4571 208.9254 137.5348 208.7961 137.6025 208.771 137.6159 208.7647 137.619 208.6979 137.6517 208.671 137.6649 208.6211 137.6891 208.6046 137.6971 208.5112 137.7423 208.4922 137.7515 208.4878 137.7536 208.4837 137.7557 208.4755 137.7595 208.4448 137.7742 208.4094 137.7912 208.401 137.7954 208.0564 137.9596 207.9696 138.0019 207.9372 138.0189 208.0326 138.179 207.8004 138.2646 207.7457 138.3399 207.6778 138.364 207.6517 138.3793 207.6148 138.4012 207.2328 138.3945 207.0034 138.4788 206.9392 138.3317 206.8703 138.2487 206.7891 138.144 206.7633 138.1232 206.7833 138.1082 206.7008 137.9821 206.7021 137.9584 207.1372 137.1364 207.1279 137.1048 206.8172 136.6216 206.7122 136.5434 206.6376 136.5067 206.6075 136.431 206.5915 136.3761 206.5578 136.304 206.4571 136.0537 206.4457 136.0138 206.4418 136.0117 206.4239 136.004 206.4227 135.9725 206.4261 135.9089 206.4059 135.7218 206.3889 135.7145 206.3201 135.5892 206.31 135.5717 206.3043 135.5644 206.2279 135.5123 206.1586 135.4632 206.1466 135.4551 206.1416 135.4509 206.066 135.1426 206.0616 135.1058 206.0792 134.908 205.9885 134.6901 205.9738 134.6442 205.8226 134.5453 205.754 134.4475 205.7349 134.4377 205.6746 134.4541 205.565 134.4843 205.4544 134.5163 205.2948 134.5511 205.1847 134.58 204.9867 134.434 204.9777 134.398 204.9681 134.3862 204.9378 134.3621 204.9169 134.3437 204.9079 134.3343 204.869 134.2981 204.7859 134.228 204.7374 134.2312 204.6098 134.0712 202.5832 134.7557 202.3661 134.759 199.5794 135.0597 199.5448 135.0097 198.7376 134.1026 198.6634 134.0222 198.9013 132.4066 198.8587 132.2194 198.6024 131.1721 198.5261 131.0576 196.6592 128.9576 196.5775 129.0087 196.6495 128.8266 196.4502 128.7343 196.3391 128.685 196.3036 128.6389 196.2645 128.468 196.2717 128.3887 196.2304 128.2814 196.2145 128.2461 196.185 128.2139 195.8817 128.0957 195.795 128.0559 195.6528 127.9488 195.444 127.8027 195.3007 127.4091 195.1975 127.208 195.0968 127.0435 194.9486 126.8934 194.8039 126.7755 194.8074 126.6671 194.8063 126.591 194.802 126.4033 194.8167 126.4075 194.8224 126.3851 194.8598 126.2677 194.8689 126.2482 194.9114 126.1705 194.9402 126.1037 195.0042 125.6626 194.795 125.2212 194.7427 125.1435 194.5613 124.9723 194.4349 124.7813 194.2876 124.7617 194.1201 124.7682 194.0565 124.7736 193.663 124.8583 193.5613 124.8356 193.144 124.7476 192.893 124.6516 192.8507 124.6384 192.8355 124.6336 192.7965 124.6183 192.5853 124.6171 192.4438 124.6492 192.3062 124.6829 192.1701 124.7197 192.0992 124.7402 192.0187 124.7773 192.0039 124.7833 191.5013 124.8426 191.4223 124.8414 191.353 124.8387 191.1584 124.9297 191.0893 124.9481 190.9204 124.9269 190.8603 124.9201 190.6659 124.8572 190.3742 124.7902 190.3152 124.7787 190.2376 124.8354 190.1538 124.9791 190.1188 125.0183 190.0117 125.1267 189.0099 125.3122 189.0038 125.2973 185.2705 125.0648 185.0487 124.9729 184.2019 124.3294 183.9345 124.3092 183.6203 123.8198 183.5511 123.6035 183.5136 123.4289 183.5128 123.3557 183.3517 123.1377 183.3633 123.0874 183.2649 122.9117 183.0084 122.7302 182.6884 122.722 182.6027 122.7121 182.4281 122.7769 182.4085 122.7828 182.3263 122.7956 181.8403 122.7368 181.5637 122.5046 180.1588 121.9116 180.1092 121.8936 179.771 121.5012 179.6861 121.4255 179.5479 121.4031 179.4787 121.3553 178.5447 120.9444 178.3632 120.9038 178.027 120.6192 177.9681 120.5391 177.8105 119.9318 177.6721 119.8758 177.5172 119.705 177.0361 119.7244 176.7451 119.6707 176.6393 119.5333 176.6086 119.4943 176.8395 119.1394 176.9234 118.9876 176.9738 118.8139 177.1275 118.3908 177.1277 118.1215 177.1303 118.0986 177.3308 117.3465 177.5173 117.2763 177.7519 116.8229 177.9384 116.6367 179.3939 116.2088 179.5381 116.0693 179.9943 115.8817 180.9385 115.4889 183.2952 114.3962 183.4274 114.2199 183.968 113.8766 184.0535 113.4563 183.6585 105.539 183.6257 105.3501 183.9582 104.6523 183.1024 103.5721 182.9191 103.2343 182.4649 102.7739 180.5093 95.0553 180.4058 94.8941 179.3169 91.7106 179.1696 91.2437 179.1317 91.1236 178.844 90.8197 178.8355 90.8139 178.8217 90.8078 178.75 90.7772 178.6669 90.7413 178.0375 90.4452 178.0225 90.4433 176.6995 90.589 176.5073 90.6094 175.5849 88.6299 175.7892 88.2003 181.953 83.8282 182.3265 83.947 182.473 84.0043 183.2418 84.3187 183.5643 84.4502 183.5779 84.4558 190.5243 89.6254 193.3602 93.3938 199.6747 95.4376 201.2926 102.0852 208.0011 104.9474 209.0573 106.1436 210.014 106.368 210.0741 106.8826 210.1314 107.1958 210.1374 107.1971 210.1769 107.2054 210.1771 107.2054 210.2491 107.1729 210.3381 107.1393 210.3382 107.1393 210.3975 107.2092 210.3976 107.2092 210.4023 107.2092 210.4558 107.1795 210.5824 107.0712 211.1016 106.8712 211.9987 106.4903 213.0091 106.4154 213.2918 106.0027 213.5075 105.9921 213.5077 105.9921 213.594 106.0121 213.5993 106.0131 213.6217 106.0185 213.6933 106.0582 213.8746 106.1155 214.0672 106.1418 216.0613 106.3179 216.1771 107.2946 216.0972 109.4507 216.0974 109.451 216.1034 109.455 216.1037 109.4551 216.1039 109.4552 217.16 108.7264 217.9363 108.2587 219.8561 106.7127 220.9231 106.2822 226.2301 100.5518 228.3985 96.8955 229.0288 96.4223 230.2384 95.5634 230.4955 95.3828 230.5137 95.3702 230.5187 95.3661 230.6852 95.545 230.8632 95.7503 231.141 96.1066 232.2585 97.2484 233.7002 99.2517 236.1234 101.6534 238.5304 103.3683 239.3284 104.456 239.7854 104.5703 240.4251 104.6712 240.4253 104.6711 240.4253 104.6712 240.4532 104.669 240.5461 104.6277 240.8541 104.5066 241.4093 104.2814 241.6141 104.2147 245.1575 103.3425 245.525 103.6481 246.1525 110.8445 245.7921 110.9904 245.7573 111.0879 245.6416 111.3905 245.6303 111.3886 245.59 111.391 245.5572 111.3929 245.4136 111.1766 245.3583 111.1836 245.2967 111.1713 245.2613 111.1651 244.7236 111.456 244.682 111.5001 244.4385 111.6232 244.435 111.6271 243.476 112.0256 243.4438 112.0413 240.2767 113.0191 240.2705 113.0193 239.6452 113.1197 239.6142 113.1368 239.6057 113.1323 239.5886 113.2203 239.5979 113.3064 239.5844 113.3152 239.5384 113.3444 239.4826 113.343 239.4381 113.3462 239.4143 113.3688 239.0507 113.9493 238.5504 114.6471 238.5116 114.6031 238.3015 114.7102 238.0594 115.0418 238.0864 115.238 238.0265 115.4986 237.9489 115.6051 232.1412 117.7055 231.9327 117.3895 230.4164 118.0592 230.1587 118.6239 230.1002 118.7328 230.0816 118.7663 228.6029 121.3879 228.2071 121.4883 227.4999 121.1232 227.2946 120.9582 226.91 121.114 226.7516 121.1823 226.7469 121.1842 226.7409 121.1854 226.6424 121.1795 224.81 120.9968 224.7613 121.0178 224.5889 121.0903 224.5775 121.0852 224.07 121.9617 224.0605 121.9522 224.0077 121.9232 223.7761 122.1647 221.2815 125.9079 220.4202 125.9469 220.4152 126.0063 220.4654 126.6007 220.4681 126.6336 220.4705 126.6576 220.4715 126.6688 220.4909 126.9145 220.4627 126.9362 220.2858 127.3256 219.2269 128.7366 219.2016 128.7623 219.149 128.8191 219.109 128.8632 219.0129 128.969 218.9813 129.0035 218.7691 129.2334 218.6734 129.3369 218.5142 129.5538 217.3843 130.9136 217.4072 130.9179 217.4456 130.9395 217.4531 130.9478 217.4708 130.9654 217.5011 131.0318 217.4976 131.0396 217.4831 131.0476 217.3865 131.1128 217.3634 131.1418 217.3353 131.1597 217.3166 131.1695 217.2419 131.2197 217.2191 131.2422 217.0888 131.3171 217.0618 131.3285 217.0564 131.3292 217.0375 131.3187 217.0109 131.3269 216.995 131.3928 216.9787 131.4646 216.973 131.4899 216.9449 131.5526 216.8573 131.7184 216.8402 131.7512 216.8344 131.76 216.7872 131.8247 216.7054 131.934 216.6764 131.998 216.6588 132.0365 216.5403 132.2885 216.5001 132.3477 216.2759 132.6588 215.4514 133.7976 215.3426 133.8878 215.0672 134.1139 215.0473 134.1242 215.0167 134.1627 213.2375 135.6783 213.1848 135.7257 212.5417 136.2769 212.2156 136.552 212.0746 136.6686 211.73 136.9556 211.6531 137.012 211.4248 137.2081 211.2653 137.346 211.2548 137.3551 211.2509 137.3587 211.2424 137.3659 211.1346 137.4592 210.8745 137.6808 210.86 137.6929 210.8531 137.6986 210.8369 137.7121 210.8108 137.7542 210.809 137.9221 210.7748 138.0074 210.7132 138.0879 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Seongbuk-gu" data-value="성북구"></path>
            </a>            
            <a  xlink:href="#open-moda4" xlink:title="강북구" target="_parent">
                <path d="M 216.1037 109.4551 216.1034 109.455 216.0974 109.451 216.0972 109.4507 216.1771 107.2946 216.0613 106.3179 214.0672 106.1418 213.8746 106.1155 213.6933 106.0582 213.6217 106.0185 213.5993 106.0131 213.594 106.0121 213.5077 105.9921 213.5075 105.9921 213.2918 106.0027 213.0091 106.4154 211.9987 106.4903 211.1016 106.8712 210.5824 107.0712 210.4558 107.1795 210.4023 107.2092 210.3976 107.2092 210.3975 107.2092 210.3382 107.1393 210.3381 107.1393 210.2491 107.1729 210.1771 107.2054 210.1769 107.2054 210.1374 107.1971 210.1314 107.1958 210.0741 106.8826 210.014 106.368 209.0573 106.1436 208.0011 104.9474 201.2926 102.0852 199.6747 95.4376 193.3602 93.3938 190.5243 89.6254 183.5779 84.4558 183.5643 84.4502 183.181 84.2858 182.3147 83.9408 182.9718 83.0398 183.4215 80.5144 181.6516 77.1352 182.1896 71.6505 179.0726 65.6808 188.3692 57.2195 189.768 50.2553 189.1842 45.7154 188.4216 43.8906 188.5956 43.769 189.3927 43.4977 189.8072 43.2525 192.2038 40.356 193.7668 39.9564 194.5607 39.8985 194.9505 39.6245 195.1832 39.5932 195.4279 39.5603 195.4304 39.5645 195.5722 39.8054 195.5822 40.1365 195.8312 40.2578 195.8313 40.2577 195.9199 40.1787 196.2033 39.9258 196.8232 39.6652 196.9683 39.1237 197.3367 39.0175 197.5212 38.8819 197.5213 38.8819 197.5507 38.8904 198.6427 38.9202 199.8256 39.4687 200.4605 39.487 200.5623 39.4899 200.3769 40.6133 201.0928 44.0091 207.7286 52.7623 203.1889 69.3798 203.6935 70.9522 205.1206 72.0707 207.0397 72.7398 212.1756 73.908 218.1472 79.434 223.211 87.9877 226.6276 91.1285 228.5599 92.3422 229.7258 93.9058 230.1799 94.8196 230.3697 95.1637 230.4615 95.3024 230.5186 95.366 230.2382 95.5634 229.0286 96.4223 228.3983 96.8955 226.2299 100.5518 220.9229 106.2822 219.8559 106.7127 217.9361 108.2587 217.1598 108.7264 216.9399 108.8767 216.1037 109.4551 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Gangbuk-gu" data-value="강북구"></path>
            </a>
            <a   xlink:href="#open-moda16" xlink:title="도봉구" target="_parent">
                <path d="M 205.1206 72.0707 203.6935 70.9522 203.1889 69.3798 207.7286 52.7623 201.0928 44.0091 200.3769 40.6133 200.5449 39.9551 200.5623 39.4899 200.5641 39.4565 200.4271 38.7641 200.4025 38.5797 200.5215 36.7199 200.317 34.2427 199.8299 32.848 201.3595 28.1509 205.6119 23.7698 205.6121 23.7698 206.8116 23.9402 207.362 24.0184 208.8557 24.1919 212.8865 25.5429 215.8062 25.8252 217.0579 31.5881 218.0734 32.7372 218.0736 32.7372 218.9442 32.5727 220.4391 32.1447 221.2768 32.0115 222.5564 31.4198 222.892 30.7768 223.6014 30.6883 223.6659 30.1302 224.4863 29.5645 225.0047 29.4906 225.1299 29.7279 225.1568 29.7792 225.384 29.7966 225.384 29.7965 225.931 29.6352 225.931 29.6353 226.038 29.9312 226.0863 30.0633 226.1666 30.4042 225.8978 31.1247 226.4216 31.2346 227.2043 31.7662 227.266 32.2579 227.5539 32.2981 227.5541 32.2981 227.8139 32.2841 228.0493 32.2058 228.4585 32.0065 228.629 31.9758 229.4115 31.4495 229.7059 30.8441 230.0159 30.7365 230.0159 30.7366 230.0796 31.1063 230.1418 31.4609 230.2224 31.8964 230.5454 32.9365 230.9833 33.6975 230.8632 36.3758 231.665 38.0634 231.9931 38.2844 232.3129 38.386 232.3129 38.3935 232.3255 38.4559 232.4284 38.9833 232.5046 39.5839 232.504 39.6856 232.4398 40.6928 232.3997 41.0367 231.8722 41.9169 231.6373 43.6785 230.74 46.8003 230.1022 48.2191 229.6944 50.8464 229.5679 51.9143 229.5747 52.2001 229.5749 52.2063 229.5838 52.5554 229.5854 52.5727 230.11 55.2547 231.9267 58.6133 233.3743 64.6056 235.102 74.2928 235.1348 74.713 235.1345 74.7464 235.1327 75.3092 234.9631 76.5612 234.5894 77.6237 234.2645 80.6884 231.7999 76.345 228.4003 81.0566 226.2743 86.8162 225.4509 87.5345 224.6016 88.67 223.211 87.9877 218.1472 79.434 212.1756 73.908 209.5682 72.3607 207.0397 72.7398 205.1206 72.0707 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Dobong-gu" data-value="도봉구"></path>
            </a>
            <a   xlink:href="#open-moda6"  xlink:title="노원구" target="_parent">
                <path d="M 230.5187 95.3661 230.5186 95.366 230.4615 95.3023 230.3697 95.1637 230.1799 94.8196 229.7258 93.9058 228.5599 92.3422 226.6276 91.1285 225.2899 89.6137 225.3289 89.1895 224.6016 88.67 225.4509 87.5345 226.2743 86.8162 228.4003 81.0566 231.7999 76.345 234.2645 80.6884 234.5894 77.6237 234.9631 76.5612 235.1327 75.3092 235.1345 74.7464 235.1348 74.713 235.102 74.2928 233.3743 64.6056 231.9267 58.6133 230.11 55.2547 229.5854 52.5727 229.5838 52.5554 229.5749 52.2063 229.5747 52.2001 229.5679 51.9143 229.6944 50.8464 230.1022 48.2191 230.74 46.8003 231.6373 43.6785 231.8722 41.9169 232.3997 41.0367 232.4398 40.6928 232.504 39.6856 232.5046 39.5839 232.4284 38.9833 232.3255 38.4559 232.3129 38.3935 232.3129 38.386 232.3129 38.3859 232.3144 38.106 232.3169 37.6503 232.3191 37.2256 234.8115 35.2578 238.1138 34.2297 240.3929 30.2182 244.1422 30.1456 244.2888 30.4167 244.4872 30.5322 244.6693 30.8635 245.1116 31.1534 245.1117 31.1533 245.4108 31.0622 245.607 30.8857 245.6072 30.8857 246.2108 31.0461 246.3829 31.1495 246.3831 31.1494 246.6203 31.1338 247.6921 31.0634 249.3529 29.7559 251.7763 29.0568 253.9168 28.9267 255.397 30.2092 255.924 30.6658 255.9592 32.9682 256.8895 34.2618 257.2978 34.4453 257.8834 34.7085 260.8409 35.0381 262.07 34.7374 262.1906 34.7079 262.6708 34.6792 264.8446 35.5177 265.1452 38.6983 262.5504 42.4703 262.4529 43.8646 261.8252 44.6535 261.9994 45.7285 263.2185 47.003 264.5987 50.7001 264.589 52.6013 265.0994 53.4651 265.0818 53.5537 264.9415 54.2604 264.0106 55.3948 263.7115 56.7154 263.7796 57.8741 264.004 58.2766 264.3133 58.8316 263.444 59.3359 263.3772 59.3746 262.7203 60.5983 261.9182 61.6889 261.2007 63.0358 263.6172 76.7166 270.5052 75.8921 273.2799 76.391 274.4471 78.3475 274.8946 78.6932 274.958 78.671 275.1946 78.5882 275.5236 78.4711 275.6613 78.5434 275.8199 78.6267 275.8947 78.8013 276.1292 88.8689 271.9386 92.7149 270.5192 97.9659 271.6114 99.1579 266.6482 99.1154 264.7124 100.3786 263.4264 100.3945 262.8363 101.2522 262.723 101.2346 262.6363 101.267 262.5396 101.2511 262.5183 101.2808 262.5221 101.2873 262.5091 101.2953 262.509 101.2953 262.368 101.2481 262.1756 101.1726 261.8633 100.9887 261.3032 100.5018 259.751 99.7775 259.4317 99.4812 259.3265 99.3312 259.248 99.2638 259.2028 99.2259 259.0548 99.3749 258.9391 99.5213 258.9 99.5433 258.8506 99.5605 258.8505 99.5604 258.8504 99.5605 258.8016 99.5529 258.6399 99.5077 258.2056 99.3031 257.7092 99.1879 257.466 99.1681 257.262 99.1675 256.8979 99.2399 256.4286 99.3474 254.8386 99.9816 253.8367 100.1713 249.4873 102.0315 248.4717 102.3329 247.7534 102.491 247.0077 102.6075 246.8648 102.6559 246.8646 102.656 246.8542 102.6254 246.8466 102.5981 246.8316 102.6013 246.8283 102.6021 246.8076 102.6067 246.7681 102.6151 246.7593 102.6174 246.7082 102.6335 246.4258 102.723 246.4253 102.7233 246.3501 102.7651 246.2768 102.8064 246.2104 102.9023 246.232 103.142 245.525 103.6481 245.1575 103.3425 241.6141 104.2147 241.4093 104.2814 240.8541 104.5066 240.5461 104.6277 240.4532 104.669 240.4253 104.6712 240.4253 104.6711 240.4251 104.6712 239.7854 104.5703 239.3284 104.456 238.5304 103.3683 236.1234 101.6534 233.7002 99.2517 232.2585 97.2484 231.141 96.1066 230.8632 95.7503 230.6852 95.545 230.5187 95.3661 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Nowon-gu" data-value="노원구"></path>
            </a>
            <a   xlink:href="#open-moda22" xlink:title="은평구" target="_parent">
                <path d="M 163.2952 90.1927 156.2512 95.9069 157.2602 107.6143 144.2401 120.7821 135.3709 133.1107 128.7892 130.4098 121.3107 138.9444 106.8263 125.6569 109.9523 122.7483 110.2537 122.8693 109.5276 124.8653 109.4505 124.9974 109.3413 125.3842 109.3536 125.4805 117.7196 127.7888 120.9539 118.8826 121.0217 118.6228 121.3004 111.6892 121.06 110.9468 124.0671 99.5806 124.0624 99.4466 125.1271 94.5677 125.7291 94.0174 125.5246 86.3271 129.4049 76.2425 125.0852 73.0001 125.0587 72.9684 127.6357 73.9685 127.7154 74.059 128.0607 74.4092 128.0587 74.4161 128.4967 74.734 128.5027 74.7373 131.5517 75.5143 132.0059 75.4917 140.6894 72.431 140.7022 72.4165 140.9578 72.1242 140.9847 72.0939 140.9989 72.0804 144.5646 70.6127 144.9525 70.5056 146.1312 70.1694 146.6906 69.9714 149.6342 65.3237 149.8109 65.1355 150.0193 64.9262 150.1296 64.8389 161.2362 67.5824 161.2468 67.5968 166.904 86.5969 166.1399 87.4987 163.2952 90.1927 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Eunpyeong-gu" data-value="은평구"></path>
            </a>
            <a   xlink:href="#open-moda12"  xlink:title="서대문구" target="_parent">
                <path d="M 171.0761 152.7323 171.0762 152.7326 170.1077 153.0551 169.5847 153.1564 169.1366 153.3713 166.523 155.2625 166.4515 155.2804 166.2645 155.2974 165.7858 155.3655 165.4643 155.411 165.3237 155.4306 165.3178 155.4313 165.3177 155.4313 165.3297 155.4715 164.9322 155.6809 164.1633 156.6518 163.4371 157.0719 161.2685 156.9065 147.0097 158.9574 140.7302 151.2986 121.4932 139.4448 128.7891 130.4102 135.3709 133.111 144.2401 120.7825 150.2088 118.5922 156.0442 109.0814 162.8507 119.1851 162.1337 136.1596 159.443 137.1353 167.0839 146.5447 169.6895 150.0368 170.7085 151.8609 170.9788 152.4961 171.0172 152.5899 171.0413 152.6479 171.0589 152.6907 171.07 152.7171 171.072 152.7221 171.0761 152.7323 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Seodaemun-gu" data-value="서대문구"></path>
            </a>
            <a   xlink:href="#open-moda10"  xlink:title="마포구" target="_parent">
                <path d="M 152.5848 178.7322 152.5848 178.7323 145.7972 173.5333 144.9308 173.0039 142.1186 171.6555 141.0432 172.7746 140.6223 173.2141 136.5858 172.3041 136.282 171.5554 135.8284 171.5494 132.3914 171.5317 132.1152 171.5297 132.1016 171.5296 123.3307 171.4831 123.3186 171.4828 123.3049 171.4676 120.4444 167.2429 120.4414 167.2389 120.4374 167.2337 106.1236 158.0438 105.4424 157.6147 105.4422 157.6145 105.4423 157.6143 105.2559 157.4924 103.914 156.6221 100.832 154.6077 96.9916 152.2342 95.0377 151.2642 87.5449 145.296 86.7757 144.5361 86.104 143.5888 85.7809 143.1368 85.7627 143.1103 85.7731 141.2507 102.4787 137.3023 106.8262 125.6572 121.4932 139.4448 140.7302 151.2986 147.0097 158.9574 161.2685 156.9065 163.4371 157.0719 164.1633 156.6518 164.9322 155.6809 165.3297 155.4715 165.2573 155.9933 165.6121 155.96 166.3211 156.3593 166.3259 156.9287 166.587 157.3195 166.6001 157.3626 166.6067 157.4498 166.6067 157.45 166.5472 157.6053 166.0733 158.2627 165.894 158.3191 165.645 158.6692 165.5222 159.0426 165.3734 159.1758 165.3698 159.3486 165.4842 159.6706 165.5375 160.0534 165.7549 161.2259 165.8184 162.2653 165.8182 162.2655 165.8183 162.2657 165.797 162.2833 165.7918 162.3068 165.7724 162.3562 165.7723 162.3565 165.7721 162.357 165.7909 162.4209 165.7959 162.441 165.811 162.5146 165.9172 162.6223 166.0833 162.8093 166.1371 162.8448 166.2872 163.0244 166.6525 163.8442 166.9092 164.0168 166.9091 164.0171 166.9093 164.0172 166.7811 164.9149 165.6817 165.0655 164.1147 167.1378 162.403 168.2581 160.8356 173.5121 157.2808 176.5492 152.9702 177.6386 152.8386 178.3157 152.6413 178.6392 152.6303 178.6571 152.5848 178.7322 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Mapo-gu" data-value="마포구"></path>
            </a>
            <a   xlink:href="#open-moda20"  xlink:title="양천구" target="_parent">
                <path d="M 104.563 193.3728 104.5425 193.429 104.337 193.5144 103.8846 193.4234 103.7787 193.6001 103.8226 193.69 104.1008 193.9355 104.1245 194.0566 104.0532 194.147 103.6692 194.6131 103.5622 194.6658 103.2093 195.6087 103.1072 196.3398 103.1156 196.383 103.2888 197.2526 103.1105 197.333 102.3686 197.0256 102.3151 197.0796 102.1695 197.3749 102.2145 197.7183 102.1757 197.8307 102.0306 198.1011 101.2639 198.1846 101.2373 198.2251 100.4763 199.1283 100.4239 199.1927 100.3529 199.3394 100.3988 199.4804 100.4558 199.6601 100.8047 199.7839 100.985 199.6368 101.0573 199.4703 101.0366 199.2199 101.0089 198.9174 101.2743 198.7342 101.4805 198.9178 101.9192 199.3018 102.184 199.3439 102.3692 199.4377 102.4218 199.5026 102.1612 199.7734 102.1323 199.6888 101.4086 199.5723 101.2695 199.947 101.2696 199.9553 101.3224 200.2612 101.5694 200.7505 101.5178 200.8316 101.4759 200.8908 101.4446 200.9323 101.4263 200.9468 100.9707 201.0508 100.6893 200.9002 100.4628 200.9553 100.3843 201.0185 100.3734 201.033 100.3546 201.0611 100.3362 201.0891 100.3146 201.1245 100.3113 201.6553 100.6945 201.8679 100.9387 201.9986 101.0724 202.3017 101.139 202.5304 101.1079 202.6606 100.9124 202.7576 100.8289 202.7936 100.7282 202.8536 100.892 203.5479 100.8776 203.6365 100.7767 203.8425 100.6647 204.088 100.4044 204.8937 100.1431 205.2771 100.1373 205.5649 100.1785 205.7612 100.1776 205.7841 100.0434 206.3841 99.4274 206.1233 99.3094 206.0319 98.7543 205.7818 98.7493 205.7651 98.4931 205.3289 97.8892 204.3402 96.4403 205.1553 95.3028 204.7468 94.8347 204.6922 94.7748 204.6574 94.4994 204.5277 94.418 204.5116 94.0497 204.4805 93.8454 204.4877 93.587 204.6887 93.5626 204.7011 93.5228 204.8062 93.4354 204.9955 92.9993 204.9546 92.7053 204.9572 92.1226 203.9489 92.1835 203.5101 92.1035 203.4346 92.1048 203.1854 92.3141 202.8778 92.8168 202.3414 92.8506 202.2081 93.0669 201.912 92.798 202.1296 92.3895 202.361 91.2788 203.0434 90.9087 203.177 90.3697 203.3733 89.581 202.0114 88.0139 200.6839 85.6744 200.1209 84.2858 199.8726 83.7172 200.1919 82.3331 200.6319 80.9339 200.9029 80.9147 200.8903 80.5017 200.8704 79.9473 201.49 79.7965 201.9981 79.7657 202.0553 79.6947 202.1196 79.2374 202.3445 79.0296 202.5655 78.8044 202.97 77.9317 204.1406 77.0027 204.3964 76.8345 204.285 74.777 205.3899 74.1131 205.4667 71.7624 206.8297 70.8843 206.3769 70.8414 206.3514 70.7704 206.2463 70.6744 206.0768 70.5586 205.8847 70.5259 205.8565 70.1665 205.7219 70.1357 205.696 70.1094 205.6448 70.0642 205.5454 69.3851 205.1371 69.2865 205.004 69.0879 204.7341 68.9846 204.3613 68.7885 204.0466 68.5769 203.8262 68.5613 203.8115 68.4018 203.6522 68.6813 202.217 68.6908 202.0473 67.1877 201.5601 66.1992 201.413 65.9162 201.533 65.7593 201.5725 65.7576 200.9106 65.4322 200.6907 65.2926 200.6913 65.2924 200.6913 65.4884 200.4869 65.7838 199.8521 65.7839 199.8518 65.6057 199.7885 63.4137 199.3575 63.7319 196.0333 63.105 195.579 62.8946 194.4046 62.8946 194.4044 64.4389 188.1327 65.6421 186.1759 66.6784 185.531 66.7625 185.0989 67.1904 184.9088 67.1905 184.9088 67.1907 184.902 66.8898 184.7268 66.5381 183.5202 66.4933 183.1851 66.4933 183.1849 66.7474 182.5718 66.7476 182.5715 65.9083 181.9364 64.7948 181.8004 62.1466 177.1695 62.2831 171.7692 64.7473 170.8432 65.2299 167.8799 66.6961 165.4126 67.2978 165.354 67.8118 165.2821 67.9597 165.267 68.0098 165.2626 68.0424 165.5068 68.064 165.7801 68.2342 166.4821 68.5108 167.0787 67.9532 168.9735 68.1367 170.8896 68.3751 171.0525 68.3752 171.0524 68.5138 170.8492 68.5495 170.7969 70.4363 170.7271 70.4409 170.7458 70.4464 170.7678 70.4497 170.7814 70.8888 172.5888 71.9253 174.7347 71.367 175.7279 73.4703 180.162 74.7985 182.939 75.7739 184.9892 75.7809 184.9921 75.7811 184.9921 93.1208 182.0515 91.8466 168.4317 93.4275 162.2725 93.5372 162.2257 93.5735 162.21 93.6088 162.1948 93.6146 162.1923 93.6192 162.1949 94.0316 162.4275 94.5632 162.7421 97.8676 165.272 99.464 166.0514 100.1005 166.182 100.424 166.215 100.5864 166.2234 100.7489 166.2264 100.749 166.2264 100.7491 166.2264 100.9117 166.2239 103.5374 166.0936 105.237 165.5147 105.0135 165.1467 105.139 165.1263 105.2428 165.1138 105.4049 165.0946 105.5278 165.1354 105.6338 165.1908 105.6343 165.1913 105.6485 165.2018 105.9712 165.599 106.2992 166.0781 106.6109 166.4604 107.0607 167.3614 108.0463 168.403 108.1528 169.396 108.7715 169.6329 109.5905 172.7657 110.6404 174.968 111.9273 176.8542 112.4348 177.9328 112.4483 178.0687 112.4519 178.1772 112.4506 178.1901 112.4491 178.2043 112.4491 178.2046 112.3631 178.5488 112.2105 178.8108 111.4113 179.3399 111.2712 179.5329 111.2583 179.5724 111.2457 179.6108 111.2457 179.611 111.2499 179.7614 111.2578 179.8631 111.3139 180.0101 111.6518 180.212 112.5381 180.2547 112.7523 180.3893 112.8283 180.4532 112.8284 180.4533 112.0589 181.7637 110.2365 181.7924 110.2163 181.8032 110.1922 181.819 110.1838 181.824 110.1772 181.8279 110.1765 181.8283 110.1716 181.832 110.1549 181.844 108.0123 183.1881 105.4369 185.8456 104.4783 185.8794 104.212 186.0031 103.9928 186.2297 103.8841 186.4938 103.884 186.4941 103.884 186.4942 103.8818 186.5137 103.8858 186.8511 104.0635 187.404 104.0794 188.2756 104.3575 189.6557 104.4674 190.6378 104.458 190.7626 104.4498 190.8152 104.4498 190.8155 104.4389 190.854 104.2184 191.1683 103.7715 191.5054 103.6376 191.7107 103.5554 191.9855 103.5462 192.0229 103.5462 192.023 103.5418 192.061 103.538 192.2349 103.5477 192.3437 103.7068 192.8109 104.4851 193.2517 104.488 193.2539 104.5474 193.3083 104.563 193.3728 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Yangcheon-gu" data-value="양천구"></path>
            </a>
            <a xlink:href="#open-moda3"  xlink:title="강서구" target="_parent">
                <path d="M 105.4422 157.6145 105.4156 157.6562 105.2708 157.8796 104.8647 158.5037 104.5288 159.0181 104.5044 160.4954 103.5749 160.2125 103.6334 161.8326 103.6336 161.8328 103.7435 162.0003 103.8231 162.1222 103.9856 162.3668 104.484 163.1261 104.9511 164.011 105.3218 164.8572 105.5525 165.1029 105.5944 165.148 105.634 165.1907 105.6341 165.191 105.6338 165.1908 105.5278 165.1354 105.4049 165.0946 105.2428 165.1138 105.139 165.1263 105.0135 165.1467 105.237 165.5147 103.5374 166.0936 100.9117 166.2239 100.7491 166.2264 100.749 166.2264 100.7489 166.2264 100.5864 166.2234 100.424 166.215 100.1005 166.182 99.464 166.0514 97.8676 165.272 94.5632 162.7421 94.0316 162.4275 93.6192 162.1949 93.6146 162.1923 93.6088 162.1948 93.5735 162.21 93.5372 162.2257 93.4275 162.2725 91.8466 168.4317 93.1208 182.0515 75.7811 184.9921 75.7809 184.9921 75.7739 184.9892 74.7985 182.939 73.4703 180.162 71.367 175.7279 71.9253 174.7347 70.8888 172.5888 70.4497 170.7814 70.4464 170.7678 70.4409 170.7458 70.4363 170.7271 68.5495 170.7969 68.5138 170.8492 68.3752 171.0524 68.3751 171.0525 68.1367 170.8896 67.9532 168.9735 68.5108 167.0787 68.2342 166.4821 68.064 165.7801 68.0424 165.5068 68.0098 165.2626 67.9595 165.267 67.8116 165.2821 67.2976 165.354 66.6958 165.4126 65.2297 167.8799 64.7471 170.8432 55.117 171.647 51.3816 168.956 47.4008 169.7574 41.5491 174.6728 36.6684 166.5652 25.2058 164.4117 22.0903 158.9102 21.5882 159.0522 21.4412 159.2866 21.3192 159.3292 21.2911 159.071 21.2301 158.9484 21.204 158.885 21.204 158.8849 21.3529 158.503 21.0947 158.1885 20 157.7629 21.9453 156.6613 23.9256 156.1392 28.5595 151.885 33.2856 141.048 37.136 139.2463 39.3282 137.2369 39.4657 134.6074 39.802 134.4097 39.929 133.8689 39.9292 133.869 40.0773 133.9416 40.114 133.9593 40.166 134.1841 40.5987 135.1351 40.92 138.1125 40.9299 138.1131 40.9661 138.1138 41.0965 138.0983 41.1904 138.0863 41.2757 138.0643 41.0375 134.982 41.3529 134.8956 41.4487 134.4568 41.5445 134.0871 41.6367 133.7977 41.6592 133.7157 41.6593 133.7151 41.6746 133.6597 41.6933 133.5766 41.7528 133.5013 41.7545 133.4993 41.8079 133.1059 41.8286 132.45 41.6961 132.3776 41.7096 131.9955 41.7099 131.995 41.7122 131.9893 41.6992 131.9034 41.6988 131.901 41.6806 131.7871 41.659 131.648 41.5938 131.4073 41.4923 131.0047 41.519 131.0096 41.7071 131.0418 41.7441 131.0532 41.971 131.2552 43.1339 132.087 43.1631 132.3127 43.1665 132.3096 43.2295 132.2531 43.2569 132.2243 43.2625 132.2168 43.4301 131.9934 43.4901 131.9085 43.4928 131.9046 43.4957 131.8998 43.571 131.7729 43.6128 131.7264 44.0167 131.4681 44.0846 131.4007 44.0879 131.397 44.129 131.3522 44.1381 131.3381 44.1368 131.3377 44.129 131.335 44.129 131.3349 44.1326 131.3288 44.1398 131.3165 44.1515 131.3022 44.1847 131.2531 43.5973 130.6652 43.8854 130.6626 44.2883 130.2239 44.5123 129.6781 44.5359 129.4849 44.5361 129.4832 44.5688 129.2816 44.8165 128.8212 44.8318 128.7974 44.8504 128.7685 44.933 128.6328 45.0622 128.3947 45.2576 128.0698 45.2621 128.0604 45.2904 128.0009 45.3192 127.9534 45.3436 127.91 45.3453 127.9071 45.3904 127.8291 45.4421 127.7442 45.4742 127.7162 45.5069 127.6892 45.5345 127.6775 45.5861 127.6558 45.6297 127.656 45.6404 127.6649 45.6537 127.6759 45.6609 127.671 45.6612 127.6708 45.6656 127.6747 45.7169 127.633 45.8999 127.7401 46.0365 127.7752 46.2072 127.7985 46.3326 127.8198 46.3443 127.8218 46.3778 127.8276 46.5494 127.8741 46.6427 127.9304 46.6553 127.9428 46.6738 127.9608 46.7147 128.0119 46.892 127.9753 46.8926 127.9709 46.9373 127.8791 47.0432 127.6697 47.0437 127.6478 47.0175 127.624 47.0062 127.6133 46.9566 127.5668 47.0029 127.2905 46.9696 127.053 46.9361 126.8983 46.9318 126.8935 46.9264 126.8583 46.9331 126.8573 47.0488 126.8931 47.1654 126.9289 47.1799 126.8769 47.1859 126.8753 47.2024 126.7725 47.2397 126.6298 47.25 126.6087 47.2522 126.6031 47.2628 126.5762 47.2484 126.5605 47.2168 126.5301 47.1752 126.4931 47.1004 126.3702 46.8519 125.9705 46.7485 125.6834 44.267 118.785 44.8586 116.7919 45.864 115.6668 46.0391 115.5848 46.2123 115.4986 46.2354 115.4834 46.3114 115.4376 46.3121 115.4372 46.3236 115.4299 46.3894 115.3702 46.3896 115.37 46.4099 115.3365 46.4175 115.3217 46.4479 115.2452 46.4549 115.2043 46.4221 115.1236 46.3721 115.0555 46.3339 115.0015 46.2875 114.9359 46.2957 114.8888 46.3083 114.8394 46.3334 114.7409 46.3714 114.6042 46.4061 114.351 46.723 113.9782 46.7319 113.9677 47.5515 113.0097 48.3683 112.0617 48.5851 112.2675 49.7145 113.3471 50.7696 114.3504 53.0825 116.1611 60.6041 123.4325 78.1501 136.4937 85.6825 143.0119 85.7625 143.1101 85.7627 143.1103 85.7809 143.1368 86.104 143.5888 86.7757 144.5361 87.5449 145.296 95.0377 151.2642 96.9916 152.2342 100.832 154.6077 103.914 156.6221 105.2559 157.4924 105.4423 157.6143 105.4422 157.6145 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Gangseo-gu" data-value="강서구"></path>
            </a>
            <a   xlink:href="#open-moda15" xlink:title="구로구" target="_parent">
                <path d="M 65.7593 201.5725 65.9162 201.533 66.1992 201.413 67.1877 201.5601 68.6908 202.0473 68.6813 202.217 68.4018 203.6522 68.5613 203.8115 68.5769 203.8262 68.7885 204.0466 68.9846 204.3613 69.0879 204.7341 69.2865 205.004 69.3851 205.1371 70.0642 205.5454 70.1094 205.6448 70.1357 205.696 70.1665 205.7219 70.5259 205.8565 70.5586 205.8847 70.6744 206.0768 70.7704 206.2463 70.8414 206.3514 70.8843 206.3769 71.7624 206.8297 74.1131 205.4667 74.777 205.3899 76.8345 204.285 77.0027 204.3964 77.9317 204.1406 78.8044 202.97 79.0296 202.5655 79.2374 202.3445 79.6947 202.1196 79.7657 202.0553 79.7965 201.9981 79.9473 201.49 80.5017 200.8704 80.9147 200.8903 80.9339 200.9029 82.3331 200.6319 83.7172 200.1919 84.2858 199.8726 85.6744 200.1209 88.0139 200.6839 89.581 202.0114 90.3697 203.3733 90.9087 203.177 91.2788 203.0434 92.3895 202.361 92.798 202.1296 93.0669 201.912 92.8506 202.2081 92.8168 202.3414 92.3141 202.8778 92.1048 203.1854 92.1035 203.4346 92.1835 203.5101 92.1226 203.9489 92.7053 204.9572 92.9993 204.9546 93.4354 204.9955 93.5228 204.8062 93.5626 204.7011 93.587 204.6887 93.8454 204.4877 94.0497 204.4805 94.418 204.5116 94.4994 204.5277 94.7748 204.6574 94.8347 204.6922 95.3028 204.7468 96.4403 205.1553 97.8892 204.3402 98.4931 205.3289 98.7493 205.7651 98.7543 205.7818 99.3094 206.0319 99.4274 206.1233 100.0434 206.3841 100.1776 205.7841 100.1785 205.7612 100.1373 205.5649 100.1431 205.2771 100.4044 204.8937 100.6647 204.088 100.7767 203.8425 100.8776 203.6365 100.892 203.5479 100.7282 202.8536 100.8289 202.7936 100.9124 202.7576 101.1079 202.6606 101.139 202.5304 101.0724 202.3017 100.9387 201.9986 100.6945 201.8679 100.3113 201.6553 100.3146 201.1245 100.3362 201.0891 100.3546 201.0611 100.3734 201.033 100.3843 201.0185 100.4628 200.9553 100.6893 200.9002 100.9707 201.0508 101.4263 200.9468 101.4446 200.9323 101.4759 200.8908 101.5178 200.8316 101.5694 200.7505 101.3224 200.2612 101.2696 199.9553 101.2695 199.947 101.4086 199.5723 102.1323 199.6888 102.1612 199.7734 102.4218 199.5026 102.3692 199.4377 102.184 199.3439 101.9192 199.3018 101.4805 198.9178 101.2743 198.7342 101.0089 198.9174 101.0366 199.2199 101.0573 199.4703 100.985 199.6368 100.8047 199.7839 100.4558 199.6601 100.3988 199.4804 100.3529 199.3394 100.4239 199.1927 100.4763 199.1283 101.2373 198.2251 101.2639 198.1846 102.0306 198.1011 102.1757 197.8307 102.2145 197.7183 102.1695 197.3749 102.3151 197.0796 102.3686 197.0256 103.1105 197.333 103.2888 197.2526 103.1156 196.383 103.1072 196.3398 103.2093 195.6087 103.5622 194.6658 103.6692 194.6131 104.0532 194.147 104.1245 194.0566 104.1008 193.9355 103.8226 193.69 103.7787 193.6001 103.8846 193.4234 104.337 193.5144 104.5425 193.429 104.563 193.3728 104.5474 193.3083 104.488 193.2539 106.1326 194.5176 106.8488 195.1281 108.2329 197.0372 113.4464 200.2183 116.5882 219.6609 118.0602 221.8844 120.687 223.4939 121.3131 223.627 121.4458 223.6942 121.6576 223.7052 121.7811 223.7098 121.7671 223.7309 121.7662 223.7323 121.7203 223.8016 121.6566 223.8978 121.6046 223.9765 121.5884 224.0006 121.2974 224.4405 121.1151 224.7159 121.0214 224.8572 120.3185 225.9203 120.2897 225.9639 120.0805 226.2809 120.0516 226.3245 120.0058 226.3941 119.9353 226.5012 119.4978 227.16 119.3162 227.451 119.2795 227.5092 119.1829 227.6725 119.1076 227.8107 119.084 227.8565 119.008 228.0115 118.9975 228.0333 118.9551 228.1259 118.9156 228.2196 118.8902 228.283 118.8642 228.3496 118.8591 228.3632 118.7244 228.7733 118.7161 228.8046 118.6576 229.0389 118.6426 229.1087 117.6833 229.3216 116.7883 229.5118 116.5897 229.5358 116.0324 229.6872 113.0519 229.0979 111.7405 228.7572 111.5457 228.6665 110.7667 228.2015 110.6543 228.1133 110.5419 228.0219 110.3202 227.8258 110.3054 227.8027 109.9673 227.2764 109.8574 227.1048 109.8003 227.0159 109.594 226.6946 109.5718 226.6601 109.4559 226.4791 109.3582 226.3326 109.2183 226.1243 108.8681 225.7648 108.8385 225.7406 108.5917 225.536 108.5456 225.4982 108.3961 225.3712 108.2625 225.2568 108.169 225.1781 108.0408 225.069 107.953 224.9945 107.8624 224.9158 107.0294 224.1668 106.9497 224.0944 106.613 223.8006 106.4854 223.704 106.4344 223.6641 106.1581 223.4562 105.6678 223.0897 105.432 222.9841 104.269 222.4691 103.5416 222.0538 100.6514 223.2341 101.9212 221.5084 102.3253 220.4764 102.1237 220.0311 101.8097 219.85 101.4662 219.9723 100.5163 219.9986 100.3151 220.0569 99.72 220.5137 99.5782 220.5546 99.4641 220.4977 99.2883 219.0785 99.3621 218.9736 99.6431 218.7433 99.7373 218.6701 100.0899 218.4999 100.2866 218.649 100.3385 218.7481 100.3793 218.9602 100.6953 219.158 100.7493 219.0383 100.6376 218.7502 100.6068 218.5485 100.7455 218.398 100.7673 218.163 100.3736 217.7036 100.1061 217.8085 99.9511 217.9516 99.4364 218.1596 98.9854 218.3751 98.7615 218.2488 98.6297 218.2074 98.5693 218.2144 98.4336 218.2609 98.4146 218.2996 98.4302 218.4952 98.1133 219.2204 97.5925 219.3491 97.4161 219.1007 97.4916 218.874 97.4032 218.7286 97.3677 218.7023 97.1197 218.5905 97.0884 218.4699 97.1673 218.329 97.2567 218.22 97.3194 218.0073 97.2885 217.8833 97.1787 217.6744 96.8459 217.4034 96.812 217.2037 96.8181 217.1806 96.9352 216.963 97.0969 216.901 97.2494 216.906 97.3038 216.5976 97.0107 216.5314 96.8786 216.4514 96.9072 216.2472 97.1293 215.1284 96.468 214.5086 96.2303 214.2873 95.1883 214.8342 95.1635 214.8479 95.0618 215.1291 95.3454 215.1419 95.5841 214.9671 95.6991 215.2 95.6914 215.5939 94.9429 216.2222 94.6522 216.4605 94.5342 216.537 94.4418 216.7149 93.9369 217.5027 93.2815 217.7807 93.0125 217.9201 92.4905 218.0195 92.3002 218.0498 92.0197 218.1192 91.9625 218.1408 91.7064 218.2552 91.4855 218.3907 88.2007 222.6614 86.9794 222.9417 86.7615 223.0188 86.5966 223.1023 86.4686 223.1987 86.2778 223.4052 85.7465 224.5536 85.3948 225.4194 85.3123 225.5504 84.6978 225.8016 84.759 225.8832 84.4432 226.4395 84.4185 226.4466 83.2395 226.6708 82.0181 226.3703 81.3826 226.1406 81.1838 226.1313 80.3091 226.2966 80.0804 226.456 79.9023 226.6261 79.8124 226.7549 79.7498 226.8547 79.6632 227.0378 79.5578 227.3208 79.5344 227.4657 79.5237 227.5668 79.4865 227.9827 79.4647 228.31 79.4248 229.0001 79.4013 229.439 79.2981 230.7973 79.2546 231.3435 79.1848 232.0439 79.0917 233.2072 79.0827 233.2895 79.0439 233.6981 79.0357 233.7857 78.6742 233.935 78.0716 233.1674 77.9039 233.1425 77.5632 232.976 77.5581 232.9394 77.3578 232.7809 77.2022 232.7232 76.7051 232.7986 75.7789 232.9842 75.3959 232.9071 74.9586 232.6681 74.7699 232.4786 74.6994 232.4907 73.9428 232.3165 73.8363 232.2867 73.5379 232.4543 73.2096 232.6682 72.7466 232.7492 72.6797 232.7676 72.4695 232.7811 72.0936 233.082 72.0076 233.1489 71.929 233.2068 71.3085 231.9365 71.0325 231.6942 70.2906 230.6286 69.0159 230.1607 66.1447 231.679 59.6573 231.4997 59.314 233.3974 57.7857 233.4664 56.9826 233.4085 56.5009 232.9401 56.3631 232.8494 56.4405 232.4723 56.6194 231.7302 56.8668 231.2672 59.6172 228.6943 60.0275 227.6221 60.0565 227.1879 60.1829 226.8843 60.2897 226.5717 60.3093 226.5239 60.361 226.405 60.3635 226.4017 60.3636 226.4016 60.3624 226.3865 60.3628 226.3568 60.3603 226.2822 60.3477 226.1727 60.0717 225.6639 60.0052 225.0555 59.9919 225.0161 59.9779 224.9782 59.9532 224.9077 59.9448 224.8821 59.9352 224.8569 59.9351 224.8568 59.9652 224.7831 59.989 224.728 60.0187 224.6536 60.061 224.5623 60.0721 224.5404 60.0722 224.5402 60.0675 224.5159 60.0633 224.499 60.0389 224.4493 60.0168 224.3783 59.8922 224.0982 59.8797 224.0472 59.8843 224.0048 59.8875 223.9837 59.89 223.9681 59.89 223.9678 59.8944 223.9529 59.9391 223.8632 59.9877 223.7571 60.0001 223.7363 60.0066 223.7051 60.0156 223.6676 60.0157 223.6673 60.0119 223.6444 60.0055 223.6076 60.0005 223.5765 60.005 223.5505 60.0144 223.4973 60.0195 223.4696 60.0196 223.4692 60.0129 223.4259 60.0033 223.3719 59.9631 223.2901 59.9265 223.152 59.9124 223.0414 59.907 223.0043 59.8968 222.9268 59.8968 222.9267 59.8874 222.8926 59.8753 222.8508 59.9029 222.8241 60.2265 222.683 60.787 222.4625 61.3572 222.2113 62.2408 221.5285 62.7922 221.0061 62.932 220.8841 63.0608 220.7746 63.061 220.7745 63.0418 220.7439 63.0014 220.7807 62.4674 218.699 56.4485 215.6794 56.2929 214.5377 55.9381 214.0971 55.5412 213.2094 55.4535 213.0094 55.3175 212.7015 55.3174 212.7014 56.1606 211.1095 57.6011 211.5669 60.2257 210.1351 62.1874 202.3003 65.0789 201.3654 65.3199 201.3388 65.6586 201.5807 65.7079 201.5702 65.708 201.5702 65.7593 201.5725 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Guro-gu" data-value="구로구"></path>
            </a>
            <a  xlink:href="#open-moda5" xlink:title="금천구" target="_parent">
                <path d="M 100.6514 223.2341 103.5416 222.0538 104.269 222.4691 105.432 222.9841 105.6678 223.0897 106.1581 223.4562 106.4344 223.6641 106.4854 223.704 106.613 223.8006 106.9497 224.0944 107.0294 224.1668 107.8624 224.9158 107.953 224.9945 108.0408 225.069 108.169 225.1781 108.2625 225.2568 108.3961 225.3712 108.5456 225.4982 108.5917 225.536 108.8385 225.7406 108.8681 225.7648 109.2183 226.1243 109.3582 226.3326 109.4559 226.4791 109.5718 226.6601 109.594 226.6946 109.8003 227.0159 109.8574 227.1048 109.9673 227.2764 110.3054 227.8027 110.3202 227.8258 110.5419 228.0219 110.6543 228.1133 110.7667 228.2015 111.5457 228.6665 111.7405 228.7572 113.0519 229.0979 116.0324 229.6872 116.5897 229.5358 116.7883 229.5118 117.6833 229.3216 118.6426 229.1087 122.2209 228.4777 123.2588 228.2454 125.8062 228.9365 125.8069 228.9412 126.3621 230.195 126.374 230.2047 127.7013 233.2067 127.7013 233.2341 126.2286 234.6727 125.6687 234.8874 125.3966 235.0958 125.4005 235.1389 126.7402 238.6355 126.6832 238.7538 129.4079 241.9261 129.2927 242.1693 128.9838 243.8468 129.1098 244.0835 131.2614 249.3791 131.3757 249.3395 134.6694 249.8757 134.9908 249.9387 135.6309 250.068 135.6776 250.1168 140.2229 255.4813 140.2346 255.5539 140.1798 256.0354 140.1798 256.0355 140.1473 256.3259 140.0871 256.8311 138.7811 257.7139 137.6384 259.1968 133.3777 265.5865 128.2356 266.7333 127.5017 268.9584 126.0577 271.0891 124.9774 271.208 124.6764 271.3029 124.4743 271.3964 124.4741 271.3964 124.3529 271.3689 124.2344 271.2275 123.8212 271.2217 123.6292 270.9496 121.3275 270.8675 121.1631 269.2054 119.7659 268.157 119.3922 267.4613 118.5173 266.5899 118.3944 266.5579 114.7902 253.5576 110.2878 250.8894 110.1402 250.9165 104.5309 236.2339 104.2591 235.7924 100.6514 223.2341 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Geumcheon-gu" data-value="금천구"></path>
            </a>
            <a   xlink:href="#open-moda8" xlink:title="영등포구" target="_parent">
                <path d="M 121.7821 223.7084 121.782 223.7084 121.7813 223.7094 121.7811 223.7098 121.6576 223.7052 121.4458 223.6942 121.3131 223.627 120.687 223.4939 118.0602 221.8844 116.5882 219.6609 113.4464 200.2183 108.2329 197.0372 106.8488 195.1281 106.1326 194.5176 104.488 193.2539 104.4851 193.2517 103.7068 192.8109 103.5477 192.3437 103.538 192.2349 103.5418 192.061 103.5462 192.023 103.5462 192.0229 103.5554 191.9855 103.6376 191.7107 103.7715 191.5054 104.2184 191.1683 104.4389 190.854 104.4498 190.8155 104.4498 190.8152 104.458 190.7626 104.4674 190.6378 104.3575 189.6557 104.0794 188.2756 104.0635 187.404 103.8858 186.8511 103.8818 186.5137 103.884 186.4942 103.884 186.4941 103.8841 186.4938 103.9928 186.2297 104.212 186.0031 104.4783 185.8794 105.4369 185.8456 108.0123 183.1881 110.1549 181.844 110.1716 181.832 110.1765 181.8283 110.1772 181.8279 110.1838 181.824 110.1922 181.819 110.2163 181.8032 110.2365 181.7924 112.0589 181.7637 112.8284 180.4533 112.8283 180.4532 112.7523 180.3893 112.5381 180.2547 111.6518 180.212 111.3139 180.0101 111.2578 179.8631 111.2499 179.7614 111.2457 179.611 111.2457 179.6108 111.2583 179.5724 111.2712 179.5329 111.4113 179.3399 112.2105 178.8108 112.3631 178.5488 112.4491 178.2046 112.4491 178.2043 112.4506 178.1901 112.4519 178.1772 112.4483 178.0687 112.4348 177.9328 111.9273 176.8542 110.6404 174.968 109.5905 172.7657 108.7715 169.6329 108.1528 169.396 108.0463 168.403 107.0607 167.3614 106.6109 166.4604 106.2992 166.0781 105.9712 165.599 105.6485 165.2018 105.6343 165.1913 105.6338 165.1908 105.6341 165.191 105.634 165.1907 105.5944 165.148 105.5525 165.1029 105.3218 164.8572 104.9511 164.011 104.484 163.1261 103.9856 162.3668 103.8231 162.1222 103.7435 162.0003 103.6336 161.8328 103.6334 161.8326 103.5749 160.2125 104.5044 160.4954 104.5288 159.0181 104.8647 158.5037 105.2708 157.8796 105.4156 157.6562 105.4422 157.6145 105.4424 157.6147 106.1236 158.0438 120.4374 167.2337 120.4414 167.2389 120.4444 167.2429 123.3049 171.4676 123.3186 171.4828 123.3307 171.4831 132.1016 171.5296 132.1152 171.5297 132.3914 171.5317 135.8284 171.5494 136.282 171.5554 136.5858 172.3041 140.6223 173.2141 141.0432 172.7746 142.1186 171.6555 144.9308 173.0039 145.7972 173.5333 152.5848 178.7323 152.5848 178.7322 152.6089 178.7703 153.2364 179.7617 153.2632 179.8041 154.4507 181.6888 156.451 185.0067 156.451 185.0068 156.4511 185.007 156.4503 185.2145 156.4478 185.6786 156.4353 188.2217 156.4169 191.6806 156.4081 193.3491 156.4056 193.8161 156.4056 193.8162 156.4056 193.8165 156.1661 193.7162 148.5763 195.1004 139.4137 195.5389 133.8121 212.1203 128.1957 213.68 127.4769 215.1458 125.6624 217.8686 124.9984 219.0954 124.3483 219.8251 123.2427 221.5007 122.8936 222.0271 122.1262 223.1892 121.9585 223.4414 121.8874 223.5492 121.7828 223.7075 121.7823 223.7084 121.7821 223.7084 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Yeongdeungpo-gu" data-value="영등포구"></path>
            </a>
            <a   xlink:href="#open-moda7"  xlink:title="동작구" target="_parent">
                <path d="M 156.4056 193.8162 156.4903 193.8473 156.5795 193.8801 156.6407 193.9024 156.7923 193.9683 158.2926 194.5689 159.0231 194.8655 159.9536 195.2086 164.72 197.6188 175.055 203.6407 177.2087 204.0787 177.2215 204.08 178.8556 204.1007 178.8558 204.1007 178.841 205.9107 178.4242 206.2893 178.9387 207.6681 181.8409 211.2412 181.2961 211.996 180.5888 215.8803 180.5764 216.3501 180.4487 217.6865 180.4608 217.8863 180.4341 218.6967 180.4327 218.7394 179.6526 231.8956 169.5878 230.9468 169.3954 230.6301 165.1574 223.8095 165.0918 223.5902 164.2983 218.5763 164.2994 218.5687 164.7586 217.9585 164.7584 217.9019 159.2242 218.611 159.0842 218.7281 155.477 216.2265 155.1294 215.8722 154.2748 215.5715 154.1296 215.4985 152.3215 216.4009 152.272 216.4173 151.7989 216.9975 151.6755 217.0576 148.9402 216.5689 148.785 216.6632 148.7822 216.6692 148.7742 216.8011 148.6556 216.8787 148.5998 216.9579 148.4105 217.2012 148.3391 217.1705 143.4031 216.5083 143.3717 216.462 142.5966 216.223 142.5922 216.1901 141.6611 215.5118 141.5059 215.5063 140.4985 214.7384 140.4888 214.7307 140.0489 214.4995 139.9762 214.5176 139.8953 214.5378 138.8168 216.1555 138.7909 216.1726 138.7535 216.2243 138.7263 216.2405 137.9936 217.6416 137.9892 217.6494 137.7374 218.3874 137.7274 218.4022 135.8032 219.0258 135.7687 219.0126 133.4757 218.9671 133.255 219.0209 130.3861 220.365 130.1322 220.5264 129.1687 221.4147 129.0856 221.5368 128.6201 221.9671 128.5949 222.0016 128.5167 222.1102 128.4875 222.1348 123.921 223.7609 123.5 223.8025 122.0429 223.7225 121.7823 223.7084 121.7828 223.7075 121.8874 223.5492 121.9585 223.4414 122.1262 223.1892 122.8936 222.0271 123.2427 221.5007 124.3483 219.8251 124.9984 219.0954 125.6624 217.8686 127.4769 215.1458 128.1957 213.68 133.8121 212.1203 139.4137 195.5389 148.5763 195.1004 156.1661 193.7162 156.4056 193.8165 156.4056 193.8162 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Dongjak-gu" data-value="동작구"></path>
            </a>
            <a   xlink:href="#open-moda13" xlink:title="관악구" target="_parent">
                <path d="M 121.7823 223.7084 122.0429 223.7225 123.5 223.8025 123.921 223.7609 128.4875 222.1348 128.5167 222.1102 128.5949 222.0016 128.6201 221.9671 129.0856 221.5368 129.1687 221.4147 130.1322 220.5264 130.3861 220.365 133.255 219.0209 133.4757 218.9671 135.7687 219.0126 135.8032 219.0258 137.7274 218.4022 137.7374 218.3874 137.9892 217.6494 137.9936 217.6416 138.7263 216.2405 138.7535 216.2243 138.7909 216.1726 138.8168 216.1555 139.8953 214.5378 139.9762 214.5176 140.0489 214.4995 140.4888 214.7307 140.4985 214.7384 141.5059 215.5063 141.6611 215.5118 142.5922 216.1901 142.5966 216.223 143.3717 216.462 143.4031 216.5083 148.3391 217.1705 148.4105 217.2012 148.5998 216.9579 148.6556 216.8787 148.7742 216.8011 148.7822 216.6692 148.785 216.6632 148.9402 216.5689 151.6755 217.0576 151.7989 216.9975 152.272 216.4173 152.3215 216.4009 154.1296 215.4985 154.2748 215.5715 155.1294 215.8722 155.477 216.2265 159.0842 218.7281 159.2242 218.611 164.7584 217.9019 164.7586 217.9585 164.2994 218.5687 164.2983 218.5763 165.0918 223.5902 165.1574 223.8095 169.3954 230.6301 169.5878 230.9468 179.6526 231.8956 180.5887 236.0804 180.5921 236.0859 183.9648 241.0886 183.9797 241.1208 184.0497 241.2752 184.0562 241.2891 183.9586 247.4333 183.9705 247.4774 184.6846 248.9271 174.2905 252.3449 166.6525 259.844 166.2646 264.9161 163.496 265.2581 163.4548 265.2993 163.2737 265.4834 163.1362 265.6219 163.1147 265.6466 162.6843 266.4856 160.7647 266.7669 160.2121 266.8005 159.8834 266.8188 159.8346 266.8188 159.7514 266.7884 159.4826 266.6642 158.9469 266.5198 157.8456 266.3461 157.6049 266.5382 157.445 266.6714 157.1455 266.9102 155.532 267.203 155.5319 267.2029 155.5268 267.1975 155.4624 267.1299 155.453 267.126 155.2831 266.9634 155.1515 266.8345 155.0466 266.8104 154.8545 266.7708 154.8544 266.7709 154.8111 266.7907 154.7998 266.7911 154.7007 266.8461 154.669 266.8637 154.611 266.896 154.4778 266.973 153.6897 267.2691 152.8632 268.0623 152.4296 268.2607 152.4295 268.2607 152.0952 268.2261 151.1716 268.0731 150.6105 267.9565 150.1351 267.8607 150.135 267.8607 149.7246 267.9521 149.0584 268.9888 148.9793 269.4313 148.9244 269.4615 148.8263 269.5134 148.8262 269.5133 148.339 269.285 148.1961 269.2194 147.648 269.2136 147.6154 268.8505 147.0093 267.9531 147.1117 265.3502 146.2217 263.9114 145.483 263.5068 144.692 262.5589 142.6243 260.8987 141.7445 260.4376 141.4743 257.7363 140.5559 256.3591 140.1798 256.0354 140.2346 255.5539 140.2229 255.4813 135.6776 250.1168 135.6309 250.068 134.9908 249.9387 134.6694 249.8757 131.3757 249.3395 131.2614 249.3791 129.1098 244.0835 128.9838 243.8468 129.2927 242.1693 129.4079 241.9261 126.6832 238.7538 126.7402 238.6355 125.4005 235.1389 125.3966 235.0958 125.6687 234.8874 126.2286 234.6727 127.7013 233.2341 127.7013 233.2067 126.374 230.2047 126.3621 230.195 125.8069 228.9412 125.8062 228.9365 123.2588 228.2454 122.2209 228.4777 118.6426 229.1087 118.6576 229.0389 118.7161 228.8046 118.7244 228.7733 118.8591 228.3632 118.8642 228.3496 118.8902 228.283 118.9156 228.2196 118.9551 228.1259 118.9975 228.0333 119.008 228.0115 119.084 227.8565 119.1076 227.8107 119.1829 227.6725 119.2795 227.5092 119.3162 227.451 119.4978 227.16 119.9353 226.5012 120.0058 226.3941 120.0516 226.3245 120.0805 226.2809 120.2897 225.9639 120.3185 225.9203 121.0214 224.8572 121.1151 224.7159 121.2974 224.4405 121.5884 224.0006 121.6046 223.9765 121.6566 223.8978 121.7203 223.8016 121.7662 223.7323 121.7671 223.7309 121.7811 223.7098 121.7813 223.7094 121.782 223.7084 121.7821 223.7084 121.7823 223.7084 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Gwanak-gu" data-value="관악구"></path>
            </a>
            <a   xlink:href="#open-moda14" xlink:title="서초구" target="_parent">
                <path d="M 178.8558 204.1007 179.104 204.102 179.1042 204.102 179.2934 204.1092 179.6847 204.1111 180.1509 204.113 180.151 204.113 180.1511 204.113 180.3379 204.1143 180.3925 204.1148 180.9375 204.124 181.2922 204.1261 181.2924 204.1261 181.6186 204.126 181.9735 204.1242 182.6366 204.1233 182.6476 204.1158 186.4715 198.0766 198.1753 188.5382 199.7298 186.5737 203.1066 189.3756 206.5287 190.1117 208.4721 198.4668 218.3517 224.8402 218.7379 224.7747 220.8091 224.4238 221.0464 224.3815 221.3199 224.3329 221.4462 224.3114 225.5668 228.4017 225.6494 228.9749 230.5745 240.7075 230.6088 240.7341 237.425 239.0777 237.7123 239.0664 249.5429 234.2024 249.5599 234.1839 255.2586 235.7073 263.7009 246.6832 263.3476 250.95 262.1039 251.413 261.4934 253.4977 260.1861 254.2804 259.6956 255.6817 259.1897 256.0312 259.1897 256.0316 259.1301 256.6983 258.5957 257.0816 258.5958 257.0818 258.6968 257.3485 258.6967 257.3487 258.3055 257.7792 258.2263 258.1188 258.2263 258.1189 258.25 258.3546 258.2892 258.6306 258.4551 259.0741 258.2521 259.4034 258.1811 260.0383 258.2614 260.1837 258.2613 260.1839 258.1507 260.3862 258.1507 260.3866 258.091 261.1203 257.8734 261.5532 257.863 261.574 256.802 262.1542 254.9112 262.4614 252.1751 265.1069 245.8682 264.641 241.4264 276.2302 227.9127 274.5773 226.1414 271.6565 225.9024 271.4503 225.0632 269.989 224.8352 269.7446 219.8871 264.2322 220.1539 263.815 219.823 252.7235 219.941 252.3643 220.2975 252.0383 220.4623 251.8512 218.0343 246.0406 218.051 245.9851 218.5856 244.2084 218.588 244.2032 217.5643 242.754 216.9612 242.4815 213.7848 246.2279 213.8276 246.5632 214.0879 247.2664 214.0182 247.468 208.7573 250.8849 208.4584 250.9031 201.8716 251.478 201.4494 251.5696 200.8283 250.8158 200.7188 250.6846 199.4061 248.7844 199.2204 248.7029 195.1347 240.6881 184.6846 248.9271 183.9705 247.4774 183.9586 247.4333 184.0562 241.2891 184.0497 241.2752 183.9797 241.1208 183.9648 241.0886 180.5921 236.0859 180.5887 236.0804 179.6526 231.8956 180.4327 218.7394 180.4341 218.6967 180.4608 217.8863 180.4487 217.6865 180.5764 216.3501 180.5888 215.8803 181.2961 211.996 181.8409 211.2412 178.9387 207.6681 178.4242 206.2893 178.841 205.9107 178.8558 204.1007 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Seocho-gu" data-value="서초구"></path>
            </a>
            <a   xlink:href="#open-moda19" xlink:title="강남구" target="_parent">
                <path d="M 206.3043 178.8321 208.473 177.4897 209.0657 177.1543 209.2656 177.1547 210.1556 177.1642 216.8172 177.1766 217.7123 177.18 220.7738 177.1939 222.798 177.2189 227.3784 178.6938 227.4496 178.7483 234.873 184.2218 241.6705 187.266 241.6795 187.2676 243.1764 187.7234 243.1764 187.7238 243.1813 188.0712 243.2132 189.8306 243.2253 190.5964 243.2377 191.1619 244.7915 207.9569 263.1918 213.6479 272.1765 219.6019 276.5404 227.552 281.4773 235.8701 283.2084 238.9086 283.6353 239.6512 284.4051 241.0039 284.7782 241.6626 284.778 241.6627 284.7312 241.6858 284.4529 241.8345 283.839 242.3083 283.2776 242.8586 283.0406 242.9353 282.7278 243.6437 279.7937 245.6426 270.1004 245.6265 263.3476 250.95 263.7009 246.6832 255.2586 235.7073 249.5599 234.1839 249.5429 234.2024 237.7123 239.0664 237.425 239.0777 230.6088 240.7341 230.5745 240.7075 225.6494 228.9749 225.5668 228.4017 221.4462 224.3114 221.3199 224.3329 221.0464 224.3815 220.8091 224.4238 218.7379 224.7747 218.3517 224.8402 208.4721 198.4668 206.5287 190.1117 203.1066 189.3756 199.7298 186.5737 206.3043 178.8321 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Gangnam-gu" data-value="강남구"></path>
            </a>          
            <a   xlink:href="#open-moda9" xlink:title="송파구" target="_parent">
                <path d="M 284.778 241.6627 284.7782 241.6626 284.4051 241.0039 283.6353 239.6512 283.2084 238.9086 281.4773 235.8701 276.5404 227.552 272.1765 219.6019 263.1918 213.6479 244.7915 207.9569 243.2377 191.1619 243.2253 190.5964 243.2132 189.8306 243.1813 188.0712 243.1764 187.7238 243.1764 187.7234 250.1386 189.6705 259.8824 185.554 273.9556 170.6525 276.8333 170.8361 281.1226 172.6188 284.4794 174.8818 284.4793 174.8821 284.4794 174.8821 283.337 178.8085 282.7844 180.687 282.0094 183.1888 281.2344 184.7618 281.2342 184.7621 292.1061 190.8484 295.2682 192.6252 297.6521 193.94 299.4356 194.9511 300.367 195.1374 296.6467 202.3808 296.6304 202.4665 312.0485 211.5626 312.0437 211.633 309.9184 220.1168 310.0336 220.1177 310.0788 220.4061 309.9617 220.4845 309.9178 220.514 309.4963 220.7665 309.0965 221.0489 308.7793 221.2572 308.2139 221.6085 307.9098 221.8081 302.0878 227.192 302.0408 227.3845 299.0621 234.8577 291.1905 234.183 285.2547 241.1829 285.2378 241.2193 284.7782 241.663 284.778 241.6627 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Songpa-gu" data-value="송파구"></path>
            </a>            
            <a   xlink:href="#open-moda18" xlink:title="강동구" target="_parent">
                <path d="M 273.9556 170.6525 275.7463 163.9828 278.5116 158.0848 284.2145 151.8765 288.3922 149.4205 295.0742 147.3505 303.3905 147.3727 309.2646 143.2095 316.5419 137.6603 317.6252 137.6486 317.9422 137.6451 317.9423 137.6451 319.1241 137.6312 320.2936 137.408 322.7057 136.4862 324.2181 135.6269 324.205 136.8698 324.205 136.87 324.1684 137.0222 324.1541 137.0813 324.1433 137.1599 324.0119 137.4179 322.9471 138.2498 322.9271 138.3092 322.9186 138.3933 322.9132 138.501 322.9132 138.5011 322.9047 138.5575 322.894 138.6234 322.8855 138.7271 322.8633 138.8586 322.8633 138.8588 322.8623 138.9163 322.8837 139.0272 322.8589 139.294 323.1135 141.4578 325.6981 147.0043 327.7217 154.3498 327.2136 161.7804 328.5189 163.5288 328.2877 167.9143 329 168.6298 328.9999 168.6301 328.8102 169.0031 327.8265 168.4864 327.1317 167.6926 325.7124 167.6991 323.044 168.9486 320.3834 168.637 316.3468 169.8099 313.7876 169.1167 306.6745 179.5776 306.0083 184.3305 299.4356 194.9507 297.6522 193.9396 295.2683 192.6248 292.1061 190.8481 285.7483 187.2887 282.4212 185.4263 281.3799 184.8434 281.3637 184.8342 281.2344 184.7618 282.0094 183.1888 282.7844 180.687 283.337 178.8085 284.4794 174.8821 284.4793 174.8821 284.4794 174.8818 281.1226 172.6188 276.8333 170.8361 273.9556 170.6525 Z" class="sig tile" stroke="#fff" stroke-width="2" id="tile-Gangdong-gu" data-value="강동구"></path>
            </a>
            </g>
            <g id="서울특별시-sig-point" font-family:Noto Sans KR, sans-serif; font-size="12" text-anchor="middle">
                <a xlink:href="#open-moda1" xlink:title="종로구" target="_parent">
                    <text y="0" x="0" transform="translate(180.208 135.9895)" class="sig label" font-size="6" fill="#000" id="label-Jongno-gu" data-value="종로구">종로구</text>
                </a>
            <text y="0" x="0" transform="translate(214.2351 160.3914)" class="sig label" font-size="6" fill="#000" id="label-Jung-gu" data-value="중구">중구 · 성동구</text>
            <a xlink:href="#open-moda2" xlink:title="용산구" target="_parent">
                <text y="0" x="0" transform="translate(178.0984 180.9387)" class="sig label" font-size="6" fill="#000" id="label-Yongsan-gu" data-value="용산구">용산구</text>
            </a>
            <text y="0" x="0" transform="translate(258.2072 166.9804)" class="sig label" font-size="6" fill="#000" id="label-Gwangjin-gu" data-value="광진구">광진구</text>
            <text y="0" x="0" transform="translate(232.0973 137.5026)" class="sig label" font-size="6" fill="#000" id="label-Dongdaemun-gu" data-value="동대문구">동대문구</text>
            <text y="0" x="0" transform="translate(262.5302 123.125)" class="sig label" font-size="6" fill="#000" id="label-Jungnang-gu" data-value="중랑구">중랑구</text>
            <text y="0" x="0" transform="translate(207.3018 119.9919)" class="sig label" font-size="6" fill="#000" id="label-Seongbuk-gu" data-value="성북구">성북구</text>
            <text y="0" x="0" transform="translate(200.4224 83.6685)" class="sig label" font-size="6" fill="#000" id="label-Gangbuk-gu" data-value="강북구">강북구</text>
            <text y="0" x="0" transform="translate(219.3658 61.5537)" class="sig label" font-size="6" fill="#000" id="label-Dobong-gu" data-value="도봉구">도봉구</text>
            <text y="0" x="0" transform="translate(248.7621 69.1764)" class="sig label" font-size="6" fill="#000" id="label-Nowon-gu" data-value="노원구">노원구</text>
            <text y="0" x="0" transform="translate(140.5722 100.606)" class="sig label" font-size="6" fill="#000" id="label-Eunpyeong-gu" data-value="은평구">은평구</text>
            <text y="0" x="0" transform="translate(147.0657 144.2402)" class="sig label" font-size="6" fill="#000" id="label-Seodaemun-gu" data-value="서대문구">서대문구</text>
            <text y="0" x="0" transform="translate(125.3525 158.2923)" class="sig label"  fill="#000" font-size="6"id="label-Mapo-gu" data-value="마포구">마포구</text>
            <text y="0" x="0" transform="translate(88.5551 193.6243)" class="sig label" font-size="6" fill="#000" id="label-Yangcheon-gu" data-value="양천구">양천구</text>
            <text y="0" x="0" transform="translate(66.4393 153.7218)" class="sig label" font-size="6" fill="#000" id="label-Gangseo-gu" data-value="강서구">강서구</text>
            <text y="0" x="0" transform="translate(82.2421 213.5797)" class="sig label" font-size="6" fill="#000" id="label-Guro-gu" data-value="구로구">구로구</text>
            <text y="0" x="0" transform="translate(119.2016 246.847)" class="sig label" font-size="6" fill="#000" id="label-Geumcheon-gu" data-value="금천구">금천구</text>
            <text y="0" x="0" transform="translate(130.3365 190.9643)" class="sig label" font-size="6" fill="#000" id="label-Yeongdeungpo-gu" data-value="영등포구">영등포구</text>
            <text y="0" x="0" transform="translate(155.0821 209.8648)" class="sig label" font-size="6" fill="#000" id="label-Dongjak-gu" data-value="동작구">동작구</text>
            <text y="0" x="0" transform="translate(152.2721 240.8026)" class="sig label" font-size="6" fill="#000" id="label-Gwanak-gu" data-value="관악구">관악구</text>
            <text y="0" x="0" transform="translate(198.4263 226.5588)" class="sig label" font-size="6" fill="#000" id="label-Seocho-gu" data-value="서초구">서초구</text>
            <text y="0" x="0" transform="translate(229.7449 210.0765)" class="sig label" font-size="6" fill="#000" id="label-Gangnam-gu" data-value="강남구">강남구</text>
            <text y="0" x="0" transform="translate(273.8758 203.1322)" class="sig label" font-size="6" fill="#000" id="label-Songpa-gu" data-value="송파구">송파구</text>
            <text y="0" x="0" transform="translate(298.9076 166.2115)" class="sig label" font-size="6" fill="#000" id="label-Gangdong-gu" data-value="강동구">강동구</text>
            </g>
            </svg>


</div>
<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
    showSlides(slideIndex = n);
    }

function showSlides(n) {
var i;
var slides = document.getElementsByClassName("mySlides");
var dots = document.getElementsByClassName("dot");
var fakepage = document.getElementsByClassName("firstfake");
if (n > slides.length) {slideIndex = 1}    
if (n < 1) {slideIndex = slides.length}

for (i = 0; i < slides.length; i++) {
  slides[i].style.display = "none"; 
   
}
for (i = 0; i < dots.length; i++) {
  dots[i].className = dots[i].className.replace(" active", "");
}

slides[slideIndex-1].style.display = "block";  
dots[slideIndex-1].className += " active";
fakepage.innerHTML=null;
}
</script>


<!-- Remember to include jQuery :) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />



    </div>
