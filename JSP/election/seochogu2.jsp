<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SK SUNNY 은하수</title>
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/fixedmenutab.css"/>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>
	html,body{
		margin:0;
		font-family: 'Noto Sans KR', sans-serif;
	}

	.sidenav {
		height:100%;
		width: 0;
		position: fixed;
		z-index:333;
		top: 0;
		left: 0;
		background:#f5f5f5;
		overflow-x: hidden;
		transition:0.5s ease-in-out;
		padding-top: 60px;
	}
	.sidenav a {
		padding: 8px 8px 8px 32px;
		text-decoration: none;
		font-size: 18px;
		color: #5d5d5d;
		display: block;
		transition: 0.2s ease-in-out;
	}
	
	.articleinfo {
		padding: 8px 8px 8px 32px;
		font-size: 12px;
		color: gray;
	
	}
	
	.sidenav a:hover, .offcanvas a:focus {
		color: #000;
	}
	#closebtn {
		position: absolute;
		top: 0;
		right: 15px;
		color: #5d5d5d;
		cursor :pointer;
		font-size: 36px !important;
		margin-left: 50px;
	}
	
	#closebtn:hover {
		color: #000;
	}
	
	/* 미디어쿼리 적용 */
	@media screen and (max-height:450px) {
		.sidenav {
			padding-top:15px;
		}
		.sidenav a {
			font-size: 18px;
		}
	}
	
    .point {
		cursor:pointer;
		background:#ffea5b;
		position:absolute;
		opacity:40%;
	}

	.point:hover {
		background:#efd000;
	}
	
    .link {
		cursor:pointer;
		background:#ffc107;
		position:absolute;
		opacity:40%;
	}

	.link:hover {
		background:#ff9007;
	}

	.tooltip {
		background:#edf691;
		color:black;
		width:35%;
		font-size:16px;
		padding:10px;
		position:absolute;
		box-shadow:4px 4px 6px gray;
        z-index: 2;
	}

    .triangle {
        display:inline-block;
        position: absolute;
        border-style: solid;
        border-color:transparent transparent #edf691 transparent;
        border-width: 14px;
        z-index: 2;
    }
	
	.contentslining{
		position:relative;
		top:0;
	}
	.blinkBox {
		cursor: pointer;
		position:absolute;
		width:100px;
		height:100px;
	}
</style>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">  
	var idx=-1;
	var check=0; //사이드바 열려있는지 체크
	var chkTooltip=0; //툴팁 열려있는지 체크하는 변수
	var relativeTop,relativeLeft;
	var relativeTop_tmp,relativeLeft_tmp; //열려있는 툴팁박스의 top, left (이미 선택한 단어의 툴팁인지 아닌지를 확인하기 위함)
	var shown = true;
	function toggle() {
		var blink_element= $('.blink');
		if(shown==true) {
			blink_element.hide();
			shown=false;
		}
		else {
			blink_element.show();
			shown=true;
		}
	}
	setInterval(toggle,500);

	var sideText='<h3 id="linkName" style="padding: 8px 8px 8px 32px;"></h3><span id="closebtn" onclick="javascript:closeNav()">x</span>';
	var word_tmp=''; //(side bar) 이전에 누른 단어를 또 눌렀는지 확인하기 위한 변수
	function getNewsLink(linkName) { //ajax로 sidebar 기사 링크 가져오기
		var region="서초구 을";
		$.ajax({
			type:"get",
			url:"${contextPath}/election/getNewsLink",
			data:{region : region,
				  word : linkName	
			},
	         success:function(data) {
	             document.getElementById('mysidenav').style.width = '360px';
	             var text=sideText;

	             $.each(data, function(idx,val) {
	                   text+='<a href="'+val.link+'">'+val.title+'</a><span class="articleinfo">'+val.news+'</span>';   
	             });
	             document.getElementById('mysidenav').innerHTML=text;
	             document.getElementById('linkName').innerHTML="'"+linkName+"'와 관련된 기사";
	             word_tmp=linkName; //저장되어 있는 단어 업데이트
	          },
	          error:function(data) {
	             alert("오류가 발생했습니다. 다시 시도해주세요.")
	          }
	       });
	}
	
	function openNav(linkName) {
		if(linkName!=word_tmp) { //방금 눌렀던 단어를 또 누르는 경우가 아닐 때 & 처음 사이드바 열 때
			getNewsLink(linkName);
		}
	}
	
	function closeNav() {
		document.getElementById('mysidenav').style.width = '0';
		document.getElementById('mysidenav').innerHTML=sideText;
		word_tmp=''; //저장되어 있는 단어 초기화
	}

	function openTooltip(e) {
		idx=$('.point').index($(e));	
		var val=$('.point')[idx];
		var word=val.getAttribute('id');
		var height=val.offsetHeight;
		var clientRect=val.getBoundingClientRect();
		relativeTop=(window.pageYOffset)+clientRect.top+height-9;
		relativeLeft=(window.pageXOffset)+clientRect.left;
		
		if(chkTooltip==1) { //툴팁 박스가 열려있다면
			if(relativeTop_tmp==relativeTop && relativeLeft_tmp==relativeLeft) { //이미 선택되어 있는 단어를 또 선택했을 때는 element 삭제
				document.getElementById("hello").remove();
    			document.getElementById("hello2").remove();
				chkTooltip=0;
				return;
			}
			else { //이미 선택되어 있는 단어가 아닌 단어를 선택했을 때는 meaning select&툴팁 추가
				document.getElementById("hello").remove();
        		document.getElementById("hello2").remove();
				getMeaning(word);
			}
			
		}
		
		else { //툴팁박스가 닫혀있다면  meaning select&툴팁 추가
			getMeaning(word);
		}
	}
	
	function getMeaning(word) { //ajax로 meaning select & 툴팁 추가
		var region="seochogu2";
		$.ajax({
			type:"get",
			url:"${contextPath}/election/getMeaning",
			data:{region : region,
				  word : word	
			},
			success:function(data) {
				var element2=document.createElement("div");
				element2.className="triangle";
				element2.id="hello2";
				element2.style.top=relativeTop+"px";
				element2.style.left=relativeLeft+"px";
				document.body.appendChild(element2);
				relativeTop_tmp=relativeTop; //현재 툴팁의 top위치를 tmp에 저장
				relativeLeft_tmp=relativeLeft; //현재 툴팁의 top위치를 tmp에 저장

				var element=document.createElement("div");
				element.id="hello";
				element.className="tooltip";
				element.innerHTML=data.meaning;
				
				if(data.link!="") {
					if(data.link[0]=='h') {
						element.innerHTML+="<br><br><span style='font-size:12px;font-weight:bold;'>참고 및 출처</span><br><a style='font-size:9.5px;word-break:break-all;' href='"+data.link+"'>"+data.link+"</a>";
					}
					else {
						element.innerHTML+="<br><br><span style='font-size:12px;font-weight:bold;'>참고 및 출처</span><br><span style='font-size:9.5px;'>"+data.link+"</span>";
					}
				}
				relativeTop=relativeTop+20;
				relativeLeft=relativeLeft-30;
				element.style.top=relativeTop+"px";
				element.style.left=relativeLeft+"px";
				document.body.appendChild(element);
				chkTooltip=1;
			},
			error:function(data) {
				alert("오류가 발생했습니다. 다시 시도해주세요.")
			}
		});
	}
</script>

</head>
<body style="font-family: 'Noto Sans KR', sans-serif;">

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
					<li><a href="${contextPath }/category" aria-label="subemnu">카테고리 별 공약 보기</a></li>
				</ul>
				</li>
				<li><a href="${contextPath }/achievementRate">지난 공약 이행률 보기</a></li>
	
			</ul>
		  </nav>

	<!-- 사이드바 -->
	<div id="mysidenav" class="sidenav" style="float:left;">
		<h3 id="linkName" style="padding: 8px 8px 8px 32px;"></h3>
		<span id="closebtn" onclick='javascript:closeNav()'>x</span>
	</div>

	<div style="height: 100px;"></div>
	<div class="contentslining">
	<h2 style="text-align: center;margin-top:-0.5%">선거공보물의 저작권은 해당 국회의원에게 있습니다.</h2>
	<div style="position:static;top:0px;width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_1.jpg" width="700" height="984">
	</div>
    
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_2.jpg" width="700" height="984">
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_3.jpg" width="700" height="984">
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
		<img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_4.jpg" width="700" height="984">
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_5.jpg" width="700" height="984">
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_6.jpg" width="700" height="984">
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
		<img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_7.jpg" width="700" height="984">
		<span class="point" style="top: 354px;left: 99px;height:17px;width: 137px;" id="민간택지 분양가 상한제" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 376px;left: 99px;height:17px;width: 91px;" id="초과이익환수제" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 421px;left:97px;height:16px;width: 90px;" id="생애 최초 주택" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 488px;left: 224px;height:16px;width: 91px;" id="주택 청약 배점" onclick="openTooltip(this)"></span>
        <span class="point" style="top: 314px;left: 477px;height:16px;width: 45px;" id="종부세" onclick="openTooltip(this)"></span>
        <span class="point" style="top: 380px;left: 400px;height:16px;width:45px;" id="공시가" onclick="openTooltip(this)"></span>
        <span class="point" style="top: 775px;left: 500px;height:16px;width: 102px;" id="시간제 보육 시설" onclick="openTooltip(this)"></span>
		<div class="blinkBox" style="top: 820px;left:82px;" onclick="openNav('2. 소상공인 및 중소기업 코로나-19 정책자금 실질지원
		* 법인(대표) 신용평가 제외 등 평가 지수 개선
		* 소상공인 및 중소기업 대상 세금 공제폭 확대')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="20" class="blink">
		</div>
		<div class="blinkBox" style="top: 753px;left:458px;" onclick="openNav('1. 보육걱정 제로 프로젝트
		* 시간제 보육 시설 확대
		* 교사 대 아동비율 축소')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="20" class="blink">
		</div>
	</div>

	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
		<img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_8.jpg" width="700" height="984">
        <span class="point" style="top: 202px;left: 96px;height:16px;width: 55px;" id="돌봄교실" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 222px;left: 262px;height:16px;width: 73px;" id="성인지 교육" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 310px;left: 97px;height:16px;width: 124px;" id="대입전형 6년 예고제" onclick="openTooltip(this)"></span>
        <span class="point" style="top: 812px;left: 95px;height:16px;width: 152px;" id="문화 컨텐츠 기업 육성법" onclick="openTooltip(this)"></span>
		<div class="blinkBox" style="top: 110px;left:347px;" onclick="openNav('미세먼지 저감 약속')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="20" class="blink">
		</div>
		<div class="blinkBox" style="top: 647px;left:27px;" onclick="openNav('청년 약속1. 청년문화사업 육성 지원
		* 생활문화ㆍ생활체육 저변확대를 통한 新산업 생태계 조성')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="20" class="blink">
		</div>
		<div class="blinkBox" style="top: 510px;left:356px;" onclick="openNav('1. 여성 1인가구를 위한 『안심 거주정책법』추진
		* 문열림센터·휴대용벨 등
		스마트 세이프 안심 세트 지원 등')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="18" class="blink">
		</div>
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
		<img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_9.jpg" width="700" height="984">
		<span class="point" style="top: 498px;left: 460px;height:24px;width: 98px;" id="전선 지중화" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 580px;left: 389px;height:24px;width: 110px;" id="지구단위계획" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 685px;left: 272px;height:24px;width: 158px;" id="경부고속도로 지하화" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 772px;left: 272px;height:24px;width: 57px;" id="종상향" onclick="openTooltip(this)"></span>
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
		<img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_10.jpg" width="700" height="984">
		<span class="point" style="top: 234px;left: 163px;height:17px;width: 57px;" id="스마트팜" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 259px;left: 402px;height:17px;width: 90px;" id="고교 학군 조정" onclick="openTooltip(this)"></span>
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/seochogu2/서초구을_박성중_선거공보_11.jpg" width="700" height="984">
	</div>
	</div>
	
</body></html>
