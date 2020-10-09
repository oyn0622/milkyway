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
					<li><a href="${contextPath }/category" aria-label="subemnu">카테고리 별 공약 보기</a></li>
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
            <h3>도움 주신 분들</h3>
            <h5>SKSUNNY 소소한소통</h5>
        </div>

</body>
</html>