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
		var region="양천구 갑";
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
		var region="yangcheongu";
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
				<li><a href="${contextPath }/introduce">은하수 소개</a></li>
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
	<div style="position:static;top:0px;width:1200px;height:820px;overflow:hidden;border:1.5px solid lightgray;transform:translate(15%);">
		<img src="${contextPath }/resources/image/yangcheongu/background01.jpg" width="1200" height="820">
	</div>

	<div style="width:730px;height:999px;overflow:hidden;border:1.5px solid lightgray;transform:translate(58%);">
		<img src="${contextPath }/resources/image/yangcheongu/background02.jpg" width="730" height="999">
	</div>

	<div style="width:1200px;height:820px;overflow:hidden;border:1.5px solid lightgray;transform:translate(15%);">
		<img src="${contextPath }/resources/image/yangcheongu/background03.jpg" width="1200" height="820">
		<span class="point" style="top: 309px;left: 279px;height: 17px;width: 80px;" id="도시재생뉴딜사업" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 339px;left: 260px;height: 17px;width: 67px;" id="10분생활SOC" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 419px;left: 228px;height: 17px;width: 62px;" id="혁신성장밸리" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 396px;left: 290px;height: 25px;width: 80px;" id="혁신성장밸리" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 469px;left: 230px;height: 17px;width: 93px;" id="글로벌 엑셀러레이터" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 657px;left: 451px;height: 22px;width: 49px;" id="복선화" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 372px;left: 1000px;height: 17px;width: 71px;" id="민·관·정 협의체" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 157px;left: 964px;height: 17px;width: 34px;" id="용적률" onclick="openTooltip(this)"></span>
	</div>

	<div style="width:1200px;height:820px;overflow:hidden;border:1.5px solid lightgray;transform:translate(15%);">
		<img src="${contextPath }/resources/image/yangcheongu/background04.jpg" width="1200" height="820">
		<span class="point" style="top: 427px;left: 106px;height: 19px;width: 70px;" id="혁신성장밸리" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 410px;left: 47px;height: 19px;width: 68px;" id="미래교육센터" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 620px;left: 82px;height: 16px;width: 53px;" id="미래교육센터" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 174px;left: 783px;height: 25px;width: 91px;" id="공공어린이집" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 196px;left: 722px;height: 18px;width: 69px;" id="공공어린이집" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 238px;left: 768px;height: 24px;width: 122px;" id="우리동네키움센터" onclick="openTooltip(this)"></span>
	</div>

	<div style="width:1200px;height:820px;overflow:hidden;border:1.5px solid lightgray;transform:translate(15%);">
		<img src="${contextPath }/resources/image/yangcheongu/background05.jpg" width="1200" height="820">
		<span class="point" style="top: 35px;left: 209px;height: 42px;width: 206px;" id="혁신성장밸리" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 176px;left: 793px;height: 21px;width: 76px;" id="보유세 개편" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 368px;left: 643px;height: 25px;width: 131px;" id="비주거용 자산 유동화" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 413px;left: 642px;height: 25px;width: 85px;" id="공유지분주택" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 472px;left: 998px;height: 19px;width: 72px;" id="공유지분주택" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 492px;left: 643px;height: 23px;width: 48px;" id="용적률" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 513px;left: 649px;height: 19px;width: 41px;" id="용적률" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 513px;left: 789px;height: 19px;width: 39px;" id="용적률" onclick="openTooltip(this)"></span>
		<span class="point" style="top: 490px;left: 799px;height: 23px;width: 42px;" id="용적률" onclick="openTooltip(this)"></span>
	</div>

	<div style="width:1200px;height:820px;overflow:hidden;border:1.5px solid lightgray;transform:translate(15%);">
		<img src="${contextPath }/resources/image/yangcheongu/background06.jpg" width="1200" height="820">
	</div>
	</div>
	
</body></html>