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
		width:70px;
		height:70px;
	}
</style>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">  
	var idx=-1;
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


	setInterval(toggle,1000);
	
	var sideText='<h3 id="linkName" style="padding: 8px 8px 8px 32px;"></h3><span id="closebtn" onclick="javascript:closeNav()">x</span>';
	var word_tmp=''; //(side bar) 이전에 누른 단어를 또 눌렀는지 확인하기 위한 변수
	function getNewsLink(linkName) { //ajax로 sidebar 기사 링크 가져오기
		var region="동작구 갑";
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
		relativeTop=(window.pageYOffset)+clientRect.top+2;
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
		var region="dongjakgu";
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
					<li><a href="${contextPath }/category" aria-label="subemnu">분야별 공약 보기</a></li>
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
	<div style="position: static;top:0px;width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/dongjakgu/background01.jpg" width="700" height="984">
	</div>
    
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/dongjakgu/background02.jpg" width="700" height="984">
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
		<img src="${contextPath }/resources/image/dongjakgu/background03.jpg" width="700" height="984">
		<span class="point" style="top: 839px;left: 151px;height: 22px;width: 101px;" id="직업교육특구" onclick="openTooltip(this)"></span>
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/dongjakgu/background04.jpg" width="700" height="984">
	</div>
	
	<div style="width:1000px;height:684px;overflow:hidden;border:1.5px solid lightgray;transform:translate(24%);">
		<img src="${contextPath }/resources/image/dongjakgu/background05.jpg" width="1000" height="684">
		<span class="point" style="top: 387px;left: 465px;height: 17px;width: 125px;" id="수요맞춤형 장애인활동지원체계 " onclick="openTooltip(this)"></span>

		<div class="blinkBox" style="top: 449px;left:645px;" onclick="openNav('동작구 관내 종합사회복지관 재배치 및 신축')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="20" class="blink">
		</div>

	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/dongjakgu/background06.jpg" width="700" height="984">
		<span class="point" style="top: 390px;left: 456px;height: 22px;width: 50px;" id="연륙교" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 450px;left: 467px;height: 22px;width: 154px;" id="다중주택 건립규모 완화" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 502px;left: 323px;height: 22px;width: 167px;" id="근대하수박스 관광자원화" onclick="openTooltip(this)"></span>
	
		<div class="blinkBox" style="top: 553px;left:225px;" onclick="openNav('서부선 경전철 조기 착공 추진')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="30" class="blink">
		</div>
	
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
		<img src="${contextPath }/resources/image/dongjakgu/background07.jpg" width="700" height="984">
		<span class="point" style="top: 607px;left: 113px;height: 22px;width: 148px;" id="장승배기 종합행정타운" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 775px;left: 110px;height: 22px;width: 170px;" id="신상도 지하차도 확장공사" onclick="openTooltip(this)"></span>
	
		<div class="blinkBox" style="top: 609px;left:88px;" onclick="openNav('장승배기 종합행정타운 차질 없는 추진')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="20" class="blink">
		</div>

	</div>

	<div style="width:1000px;height:684px;overflow:hidden;border:1.5px solid lightgray;transform:translate(24%);">
		<img src="${contextPath }/resources/image/dongjakgu/background08.jpg" width="1000" height="684">
		<span class="point" style="top: 212px;left: 428px;height: 22px;width: 127px;" id="관리형 주거환경 개선사업" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 325px;left: 430px;height: 22px;width: 123px;" id="청소년 창의혁신 체험공간" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 299px;left: 810px;height: 22px;width: 69px;" id="데이케어센터" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 382px;left: 745px;height: 22px;width: 66px;" id="쓰레기 적환장" onclick="openTooltip(this)"></span>
	
		<div class="blinkBox" style="top: 327px;left:405px;" onclick="openNav('청소년 창의혁신 체험공간 조성 (노량진근린공원 내 지하벙커 이용)')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="20" class="blink">
		</div>
		
		<div class="blinkBox" style="top: 303px;left:692px;" onclick="openNav('공공지역아동센터 및 데이케어센터 건립')" >
			<img src="${contextPath }/resources/image/logo/search.png" width="20" class="blink">
		</div>
	
	</div>
	
	<div style="width:700px;height:984px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
	    <img src="${contextPath }/resources/image/dongjakgu/background09.jpg" width="700" height="984">
	</div>
	</div>


</body>
</html>