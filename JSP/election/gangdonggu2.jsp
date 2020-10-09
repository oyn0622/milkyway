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
        z-index: 30;
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
</style>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">  
	var idx=-1;
	var chkTooltip=0; //툴팁 열려있는지 체크하는 변수
	var relativeTop,relativeLeft;
	var relativeTop_tmp,relativeLeft_tmp; //열려있는 툴팁박스의 top, left (이미 선택한 단어의 툴팁인지 아닌지를 확인하기 위함)

	var sideText='<h3 id="linkName" style="padding: 8px 8px 8px 32px;"></h3><span id="closebtn" onclick="javascript:closeNav()">x</span>';
	var word_tmp=''; //(side bar) 이전에 누른 단어를 또 눌렀는지 확인하기 위한 변수
	function getNewsLink(linkName) { //ajax로 sidebar 기사 링크 가져오기
		var region="강동구 을";
		$.ajax({
			type:"get",
			url:"${contextPath}/election/getNewsLink",
			data:{region : region,
				  word : linkName	
			},
	         success:function(data) {
	             document.getElementById('mysidenav').style.width = '300px';
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
		var region="gangdonggu2";
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
		<div style="position: static;top:0px;width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_1.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_2.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_3.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_4.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_5.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_6.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_7.jpg" width="809" height="1104">
		</div>
	
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_8.jpg" width="809" height="1104">
			<span class="point" style="top: 524px;left: 194px;height:19px;width: 158px;" id="역세권 고밀도 집적 개발" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 727px;left: 178px;height:19px;width: 86px;" id="공공복합청사" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 951px;left: 195px;height:19px;width: 60px;" id="엔젤공방" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 321px;left: 618px;height:19px;width: 44px;" id="증개축" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 343px;left:454px;height:19px;width:92px;" id="태호,유찬이법" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 434px;left:454px;height:19px;width:124px;" id="장애인 탈시설자립" onclick="openTooltip(this)"></span>
			<span class="point" style="top:480px;left: 454px;height:19px;width: 97px;" id="부양의무자제도" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 502px;left: 454px;height:19px;width: 147px;" id="발달장애인 국가책임제" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 749px;left: 613px;height:19px;width: 118px;" id="주민 주도형 에너지운동" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 906px;left: 608px;height:19px;width: 92px;" id="거주형 창작 스튜디오" onclick="openTooltip(this)"></span>
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_9.jpg"width="809" height="1104">
			<span class="point" style="top: 966px;left: 226px;height:19px;width: 105px;" id="그린뉴딜 기본법" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 991px;left: 304px;height:19px;width: 48px;" id="탄소세" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 606px;left: 440px;height:19px;width: 62px;" id="석탄금융" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 606px;left:558px;height:19px;width: 45px;" id="RE100" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 823px;left:439px;height:19px;width:133px;" id="한국형 국민기본소득" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 991px;left:450px;height:19px;width:115px;" id="장애인연금 수급권" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 1015px;left: 450px;height:19px;width: 197px;" id="수요맞춤형 장애인 활동지원체계" onclick="openTooltip(this)"></span>
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_10.jpg" width="809" height="1104">
			<span class="point" style="top: 631px;left: 66px;height:19px;width: 215px;" id="생애주기별 장애인 맞춤형 교육지원" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 702px;left: 296px;height:19px;width: 53px;" id="유보격차" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 727px;left: 142px;height:19px;width: 112px;" id="시간제 보육서비스" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 751px;left: 66px;height:19px;width: 110px;" id="온종일 돌봄 체계" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 871px;left:193px;height:19px;width:74px;" id="생업안전망" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 919px;left:56px;height:19px;width:172px;" id="주택임대차 계약갱신요구권" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 919px;left: 234px;height:19px;width: 90px;" id="임대료 상한제 도입" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 943px;left: 90px;height:19px;width: 45px;" id="임차인" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 990px;left: 196px;height:19px;width: 120px;" id="간이과세 기준금액" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 727px;left: 539px;height:19px;width: 78px;" id="폐기능 검사" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 776px;left: 499px;height:19px;width: 146px;" id="먹거리 선순환종합전략" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 943px;left:497px;height:19px;width:76px;" id="국민소환제" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 966px;left:564px;height:19px;width:88px;" id="숙의민주주의" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 1015px;left: 440px;height:19px;width: 72px;" id="자치 경찰제" onclick="openTooltip(this)"></span>
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangdonggu2/강동구을_이해식_선거공보_11.jpg"width="809" height="1104">
		</div>

	</div>
	
	
</body></html>