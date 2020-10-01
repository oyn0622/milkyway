<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SK SUNNY 은하수</title>
    <style>
         @import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
        *{
            margin:0;
            padding:0;
            overflow:hidden;
            font-family: 'Noto Sans KR', sans-serif;
        }
        img{
            margin:0;
            padding-top:3%;
            width:25%;
            
        }
        div{
            text-align: center;
        }
        h1{
            padding:0;
            margin:0;
            font-size:80px;
            font-weight:900;
        }
        h2{
            padding-top:1%;
            margin:0;
            font-weight:500;
            font-size:30px;
        }
        .nav{
            padding-top:2%;
            padding-left:10%;
            padding-right:10%;
            width:80%;
            display:flex;            
        }
        div a{
            flex:1;
            border:6px solid black;
            display:flex;
            margin:5%;
            margin-top:1%;
        }
        a img{
            flex:1;
            height: 40%;  
            padding:2%;
            margin:2%;
            margin-left:80px;
            margin-top:50px;
   
        }
        a span{
            flex:3;
            padding:5%;
            text-align:left;
            font-weight:700;
            font-size:40px;
        }
        #toweb{
            padding-top:50px;
        }
    

    </style>
</head>
<body>
    <div>
        <img src="${contextPath }/resources/image/logo/로고.png">
        <h1>은하수 프로젝트</h1>
        <h2>'은하수'는 발달장애인의 눈높이에 맞는 쉬운 정책/용어풀이를 제공합니다.</h2>
    </div>
    <div class='nav'>
        <a href="" style="text-decoration:none;color:black;">
            <img src="${contextPath }/resources/image/logo/guide.png"> 
            <span>웹사이트<br>사용 방법<br>알아보기</span> 
        </a>
        <a href="${contextPath }/main" style="text-decoration:none;color:black">
            <img src="${contextPath }/resources/image/logo/cursor.png">
            <span id="toweb">웹사이트<br>바로 가기</span>
        </a>
    </div>

</body>
</html>