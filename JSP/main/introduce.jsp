<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SK SUNNY 은하수</title>
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/fixedmenutab.css"/>
    <link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/color.css"  />
    <link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/outerdesign.css"  />
    <link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/modalforAR.css"/>
    
    <style>
        @import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
        
        body{
            font-family: 'Noto Sans KR', sans-serif;
            overflow:scroll;
        }
        .aboutus{
        width:100%;
        padding:0;
        margin-top:74px;
        background-image: url('${contextPath}/resources/image/logo/소개bg.png');
        color:white;
        text-align: center;
        background-size:cover;
        background-attachment:inherit;
        background-position:center;
        }
        .aboutus h2{
            margin:0;
            padding-top:6%;
            font-size:48px;
        }
        .aboutus h4{
            margin:0;
            padding-top: 5px;
            padding-bottom: 6%;
            font-size:20px;
        }
        .aboutgalaxy{
            background-color: #fefefe;
            font-weight: normal;
            text-align: center;
            padding-top: 3%;
            padding-bottom: 3%;
            padding-left: 12%;
            padding-right: 12%;
            font-size:20px;
            line-height: 30px;
        }
        .thanksto{
            background-color: #494795;
            color:white;
            text-align: center;
            padding:4%;
        }
        .thanksto h3{
            font-weight: bold;
            font-size:30px;
        }
        .thanksto h5{
            font-weight: medium;
        }

    </style>
</head>
<body>
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

        <div class="aboutus">
            <h2>ABOUT US</h2>
            <h4>SK SUNNY galaxy project</h4>
        </div>
        <div class="aboutgalaxy">
            '은하수'는 생애 첫 유권자(만 18세 이상)의 참정권 보장 및 확대를 위해<br>
            쉬운 선거공보물 읽기, 쉽게 공약 살펴보기 등의 서비스를 제공하는<br>
            SK대학생 자원봉사단 SUNNY의 사회변화 챌린지 프로젝트입니다.<br>
            <br>
            선거 참정 연령이 만 18세로 하향 조정되면서 청소년이 사회의 일원으로 인정받는 첫 걸음을 내딛었습니다. <br>
            올해 선거권을 갖게 된 만 18세 유권자는 53만여 명입니다.<br>
            만18세 이상으로 한정된 일부 청소년이 생애 첫 유권자로서 올해 21대 총선에서 처음으로 투표를 실시했습니다.<br> 
            하지만 이는 청소년의 완전한 참정권 보장으로 이어지기엔 시작에 불과합니다.<br>
            <br>
            정치권에서 청소년의 목소리를 듣는 것 뿐만 아니라 청소년이 함께 대화를 하고 결정을 내릴 수 있어야 합니다.<br> 
            하지만 학생들에게 선거가 어떻게 이루어지는지, 후보자의 선거공보물에는 어떤 정보가 담겨있는지, <br>
            각 후보의 공약은 어떤지, 당선자가 공약을 실현하고 있는지 등<br> 
            다양한 부분에서 선거에 대한 교육/학습이 이루어지지 않고 있습니다.<br>
            청소년의 높아지는 정치 관심도에 맞추어 공약, 선거, 정치와 관련된 정보를<br>
            청소년이 이해하기 쉽도록 제공하기 위해 '은하수'프로젝트가 시작되었습니다.        
        </div>
        <div class="thanksto">
            <h3>은하수 프로젝트</h3>
            <h5 style="display: inline;">기획</h5><h5 style="display: inline;padding-left:20px;font-weight: 300;">조수연</h5><h5 style="display: inline;padding-left:20px;font-weight: 300;">황은해</h5>
            <br>
            <h5 style="display: inline;margin-left:-12px;margin-right:9px;">디자인</h5><h5 style="display: inline;font-weight: 300;margin-right: 55px;margin-left: 8px;">오소은</h5>
            <br>
            <h5 style="display: inline;">개발</h5><h5 style="display: inline;padding-left:20px;font-weight: 300;">오예나</h5><h5 style="display: inline;padding-left:20px;font-weight: 300;">이예슬</h5>
        </div>
        <div class="thanksto">
            <h3>도움 주신 분들</h3>
            <h5 style="font-weight: 300;">SKSUNNY  소소한소통   강나연   강미애   강인혜   고상원   고아름   권현민   김건희   김경아   김다혜   김민기</h5>
            <h5 style="font-weight: 300;">김보연   김영은   김준섭   김지우   김지윤   김지현   김진선   김현수   김효준   김희진</h5>
            <h5 style="font-weight: 300;">박서은   박세하   박치선   박현정   서유림   송유지   송지영   신유민   안은실   안지은</h5>
            <h5 style="font-weight: 300;">엄규원   오소연   오예나   용다혜   유도경   유혜인   이서연   이석주   이성빈   이승현</h5>
            <h5 style="font-weight: 300;">이예슬   이유정   이재은   이재희   이한나   이한빛   이현정   이혜리   이혜정   임이주</h5>
            <h5 style="font-weight: 300;">임재호   임지원   임현정   장서진   장소영   장준화   전진솔   전찬영   정2   정다미</h5>
            <h5 style="font-weight: 300;">정서정   정지혜   조명진   조수연   조종선   진은지   채세림   최보원   최예지   최유진</h5>
            <h5 style="font-weight: 300;">최재혁   한아연   함수현   홍세인   황영해   황은해</h5>
        </div>

</body>
</html>