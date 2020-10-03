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
		var region="강북구 갑";
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
		var region="gangbukgu";
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
		<div style="position: static;top:0px;width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_1.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_2.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_3.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_4.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_5.jpg" width="809" height="1104">
			<span class="point" style="top: 391px;left: 184px;height: 23px;width: 186px;" id="우이령마을 종합정비계획" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 465px;left: 203px;height: 23px;width: 103px;" id="친수생태공원" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 835px;left: 110px;height: 23px;width: 88px;" id="지역자산화" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 643px;left: 465px;height: 23px;width: 158px;" id="고도제한 완화" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 665px;left: 465px;height: 23px;width: 154px;" id="소규모 주택정비사업" onclick="openTooltip(this)"></span>
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_6.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_7.jpg" width="809" height="1104">
			<span class="point" style="top: 243px;left: 245px;height: 14px;width: 103px;" id="강북발전특별법" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 284px;left: 172px;height: 14px;width: 43px;" id="지중화" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 422px;left: 65px;height: 14px;width: 103px;" id="강북봉제지원센터" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 568px;left: 214px;height: 14px;width: 118px;" id="도시재생활성화사업" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 589px;left: 62px;height: 14px;width: 147px;" id="우이령마을 종합정비계획" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 775px;left: 87px;height: 14px;width: 119px;" id="도시재생활성화사업" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 835px;left: 172px;height: 14px;width: 122px;" id="도시재생활성화사업" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 876px;left: 171px;height: 14px;width: 69px;" id="지역자산화" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 999px;left: 105px;height: 14px;width: 122px;" id="소규모 주택정비사업" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 1020px;left: 89px;height: 14px;width: 118px;" id="도시재생활성화사업" onclick="openTooltip(this)"></span>
		</div>
	
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_8.jpg" width="809" height="1104">
			<span class="point" style="top: 264px;left: 637px;height: 14px;width: 85px;" id="열린녹지사업" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 489px;left: 664px;height: 14px;width: 55px;" id="보행데크" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 546px;left: 557px;height: 14px;width: 83px;" id="용도지역 상향" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 745px;left: 555px;height: 14px;width: 84px;" id="용도지역 상향" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 815px;left: 572px;height: 14px;width: 104px;" id="가로주택정비사업" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 1003px;left: 555px;height: 14px;width: 122px;" id="소규모 주택정비사업" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 1022px;left: 606px;height: 14px;width: 52px;" id="보행테크" onclick="openTooltip(this)"></span>
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_9.jpg" width="809" height="1104">
		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_10.jpg" width="809" height="1104">
			<span class="point" style="top: 488px;left: 478px;height: 19px;width: 139px;" id="청년특별위원회" onclick="openTooltip(this)"></span>
			<span class="point" style="top: 783px;left: 233px;height: 21px;width: 142px;" id="강북발전특별법" onclick="openTooltip(this)"></span>

		</div>
		
		<div style="width:809px;height:1104px;overflow:hidden;border:1.5px solid lightgray;transform:translate(45%);">
			<img src="${contextPath }/resources/image/gangbukgu/20200415_강북구갑_천준호_선거공보_11.jpg" width="809" height="1104">
		</div>

	</div>
	
	
</body></html>