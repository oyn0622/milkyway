<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="cateList"  value="${resultMap.cateList}"  />
<c:set var="totalPromise"  value="${resultMap.totalPromise}"  />
<c:set var="category"  value="${resultMap.category}"  />
<c:set var="region"  value="${resultMap.region}"  />
<c:set var="page"  value="${resultMap.page}"  />
<c:set var="section"  value="${resultMap.section}"  />
<c:set var="total"  value="${resultMap.total}"  />

<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SK SUNNY 은하수</title>
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/fixedmenutab.css"/>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/fixedmenutab.css"/>
    <link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/color.css"  />
    <link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/outerdesign.css"  />
    <link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/modalforAR.css"/>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	/* 페이지 */
	function sendPage(section,page) {
		var category=$('#category').val();
		var region=$('#region').val();
		
	   	var form = document.createElement("form");
	   	form.setAttribute("method", "get");
	   	form.setAttribute("action", "${contextPath}/category");
	   	var input = document.createElement("input");
	   	input.setAttribute("type","hidden");
	   	input.setAttribute("name","category");
	   	input.setAttribute("value", category);
	   	
	   	var input2 = document.createElement("input");
	   	input2.setAttribute("type","hidden");
	   	input2.setAttribute("name","region");
	   	input2.setAttribute("value", region);
	   	
	   	var input3 = document.createElement("input");
	   	input3.setAttribute("type","hidden");
	   	input3.setAttribute("name","section");
	   	input3.setAttribute("value", section);
	   	
	   	var input4 = document.createElement("input");
	   	input4.setAttribute("type","hidden");
	   	input4.setAttribute("name","page");
	   	input4.setAttribute("value", page);
	   	
	  	form.appendChild(input);
	  	form.appendChild(input2);
	  	form.appendChild(input3);
	  	form.appendChild(input4);
	  	
	  	document.body.appendChild(form);
	  	form.submit();
	}
	
	function changeCategoryTmp(category) {
		$('#category_tmp').val(category);
	}
	
	function search(region) {
		var category=$('#category_tmp').val();
		if(category!='') {
		   	var form = document.createElement("form");
		   	form.setAttribute("method", "get");
		   	form.setAttribute("action", "${contextPath}/category");
		   	var input = document.createElement("input");
		   	input.setAttribute("type","hidden");
		   	input.setAttribute("name","category");
		   	input.setAttribute("value", category);
		   	
		   	if(region!="all") {
		   		var input2 = document.createElement("input");
		   		input2.setAttribute("type","hidden");
		   		input2.setAttribute("name","region");
		   		input2.setAttribute("value", region);
		   		form.appendChild(input2);
		   	}
		   	
		  	form.appendChild(input);
		  	
		  	document.body.appendChild(form);
		  	form.submit();
		}
		
	}
	
	function noResult() {
		alert("지역을 다시 선택해주세요.");
	}

</script>
<style>
	.pages {
		cursor:pointer;
	}
	
	table {
		border-collapse:collapse;
		margin:2% auto 2% auto;
	}
	
	tr {
		border-bottom:1.5px solid black;
	}
	
	td {
		text-align:center;
		padding:1.5%;
		border:solid #cccccc 2px;
	}
	
	html,body {
		margin:0;
		overflow:visible;
		background:#d2e2de;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	.fontbold {
		font-size:27px;
		font-weight:bold;
		color:#7d9690;
	}

        #smallTitle{
            margin-top: 4%;
            text-align: center;
            font-size: 30px;
            font-weight: bold;
        }
        #bigTitle{
            text-align: center;
            font-size: 50px;
            font-weight:bold;
            vertical-align: middle;
        }
        .menutitle{
            padding:0;
            margin:0;
            font-weight:bold;
            font-size:20px;
            margin-left:23%;
            margin-top:2%;
            margin-bottom:1%;
            
        }
        /*버튼메뉴*/
        .btn-group .button{
            background-color: white;
            border: none;
            color:black;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            cursor: pointer;
            font-family: 'Noto Sans KR', sans-serif;
            margin-bottom:4px;
            height:60px;
            width:160px;
          
        }
        .btn-group{
            margin-left:23%;
            position: relative;
        }
        .dropdownC{
            background-color: white;
            border: none;
            color:black;
            padding:0;
            margin:0;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            cursor: pointer;
            font-family: 'Noto Sans KR', sans-serif;
            margin-bottom:4px;
            height:60px;
        }

        .button:hover {
                    background-color: #bbc9c6;
                }
        .button:focus {
                    font-weight: 600;
                    color:#fff;
                    background-color: #7d9690;
                    outline:none;
    
                  }
          .dropdownC{
            position: relative;
            display: inline-block;
          }
          .dropdown-contentC {
              display: none;
              position: absolute;
              left: 0;
              background-color: #ffffff;
              width:420px;
              box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
              border:3px solid #7d9690;
              padding:15px;
              margin:0;
              z-index: 1;
          }
          .dropdown-contentC a {
            font-size: 16px;
            font-weight: bold;
            color:#999999;
          }

          .dropdown-contentC .button {
              width:120px;
              font-size:14px;
              padding: 0;
              margin:0;
              border: 2px solid #ebebeb;
   
          }
        

          .dropdownC:hover .dropdown-contentC {
              display: block;
          }
          .dropdownC:hover .button {
              display: inline;
          }

</style>

</head>

<body>

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
	<div style="height: 100px;"></div>
	
	
        <!-- 콘텐츠 -->
        <div id="smallTitle">제21대 서울시 국회의원</div>
        <div id="bigTitle">분야별 공약 보기</div>
        <!--선택-->
       
       <input type="hidden" id="category_tmp" /> 
        
       <div class="menutitle">·카테고리 선택</div>
        <div class="btn-group">
            <button class="button" onclick="changeCategoryTmp('정치개혁')">정치개혁</button>
            <button class="button" onclick="changeCategoryTmp('경제')">경제</button>
            <button class="button" onclick="changeCategoryTmp('과학기술')">과학기술</button>
            <button class="button" onclick="changeCategoryTmp('보건/의료')">보건/의료</button>
            <button class="button" onclick="changeCategoryTmp('문화(예술/체육)')">문화(예술/체육)</button>
          </div>
          <div class="btn-group">
            <button class="button" onclick="changeCategoryTmp('국가안보/통일')">국가안보/통일</button>
            <button class="button" onclick="changeCategoryTmp('안전')">안전</button>
            <button class="button" onclick="changeCategoryTmp('환경')">환경</button>
            <button class="button" onclick="changeCategoryTmp('일자리/노동')">일자리/노동</button>
            <button class="button" onclick="changeCategoryTmp('교육')">교육</button>
          </div>
          <div class="btn-group">
            <button class="button" onclick="changeCategoryTmp('복지')">복지</button>
            <button class="button" onclick="changeCategoryTmp('교통')">교통</button>
            <button class="button" onclick="changeCategoryTmp('주거')">주거</button>
            <button class="button" onclick="changeCategoryTmp('도시')">도시</button>
            <button class="button" onclick="changeCategoryTmp('동물')">동물</button>
          </div>
          <div class="btn-group">
            <button class="button" onclick="changeCategoryTmp('여성')">여성</button>
            <button class="button" onclick="changeCategoryTmp('어린이')">어린이</button>
            <button class="button" onclick="changeCategoryTmp('청년')">청년</button>
            <button class="button" onclick="changeCategoryTmp('어르신')">어르신</button>
            <button class="button" onclick="changeCategoryTmp('장애인')">장애인</button>
          </div>

          <div class="menutitle">·지역 선택</div>
          <div class="btn-group">
           <button class="button" onclick="search('all')">전체</button>
           <button class="button" onclick="search('종로구')">종로구</button>
           <div class="dropdownC">
              <button class="button">중구성동구</button>
              <div class="dropdown-contentC">
                <button class="button" onclick="search('중구성동구 갑')">중구성동구(갑)</button>
                <button class="button" onclick="search('중구성동구 을')">중구성동구(을)</button>
                <button class="button" onclick="noResult()">-</button>
                <br>
                  
              </div>
           </div>
   
           <button class="button" onclick="search('용산구')">용산구</button>
           <div class="dropdownC">
              <button class="button">광진구</button>
              <div class="dropdown-contentC">
                <button class="button" onclick="search('광진구 갑')">광진구(갑)</button>
                <button class="button" onclick="search('광진구 을')">광진구(을)</button>
                <button class="button" onclick="noResult()">-</button>
                <br>
                  
              </div>
           </div>
         </div>
         <div class="btn-group">
          <div class="dropdownC">
            <button class="button">동대문구</button>
            <div class="dropdown-contentC">
              <button class="button" onclick="search('동대문구 갑')">동대문구(갑)</button>
              <button class="button" onclick="search('동대문구 을')">동대문구(을)</button>
              <button class="button" onclick="noResult()">-</button>
              <br>
                
            </div>
         </div>
         <div class="dropdownC">
          <button class="button">중랑구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('중랑구 갑')">중랑구(갑)</button>
            <button class="button" onclick="search('중랑구 을')">중랑구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
       </div>
        <div class="dropdownC">
          <button class="button">성북구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('성북구 갑')">성북구(갑)</button>
            <button class="button" onclick="search('성북구 을')">성북구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
        </div>
        <div class="dropdownC">
          <button class="button">강북구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('강북구 갑')">강북구(갑)</button>
            <button class="button" onclick="search('강북구 을')">강북구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
        </div>
        <div class="dropdownC">
          <button class="button">도봉구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('도봉구 갑')">도봉구(갑)</button>
            <button class="button" onclick="search('도봉구 을')">도봉구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
        </div>
         </div>
         <div class="btn-group">
          <div class="dropdownC">
            <button class="button">노원구</button>
            <div class="dropdown-contentC">
              <button class="button" onclick="search('노원구 갑')">노원구(갑)</button>
              <button class="button" onclick="search('노원구 을')">노원구(을)</button>
              <button class="button" onclick="search('노원구 병')">노원구(병)</button>
              <br>
                
            </div>
         </div>
         <div class="dropdownC">
          <button class="button">은평구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('은평구 갑')">은평구(갑)</button>
            <button class="button" onclick="search('은평구 을')">은평구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
       </div>
        <div class="dropdownC">
          <button class="button">서대문구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('서대문구 갑')">서대문구(갑)</button>
            <button class="button" onclick="search('서대문구 을')">서대문구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
        </div>
        <div class="dropdownC">
          <button class="button">마포구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('마포구 갑')">마포구(갑)</button>
            <button class="button" onclick="search('마포구 을')">마포구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
        </div>
        <div class="dropdownC">
          <button class="button">양천구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('양천구 갑')">양천구(갑)</button>
            <button class="button" onclick="search('양천구 을')">양천구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
       </div>
         </div>
         <div class="btn-group">
          <div class="dropdownC">
            <button class="button">강서구</button>
            <div class="dropdown-contentC">
              <button class="button" onclick="search('강서구 갑')">강서구(갑)</button>
              <button class="button" onclick="search('강서구 을')">강서구(을)</button>
              <button class="button" onclick="search('강서구 병')">강서구(병)</button>
              <br>
                
            </div>
         </div>
         <div class="dropdownC">
          <button class="button">구로구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('구로구 갑')">구로구(갑)</button>
            <button class="button" onclick="search('구로구 을')">구로구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
       </div>
       <button class="button" onclick="search('금천구')">금천구</button>
        <div class="dropdownC">
          <button class="button">영등포구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('영등포구 갑')">영등포구(갑)</button>
            <button class="button" onclick="search('영등포구 을')">영등포구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
        </div>
        <div class="dropdownC">
          <button class="button">동작구</button>
          <div class="dropdown-contentC">
            <button class="button" onclick="search('동작구 갑')">동작구(갑)</button>
            <button class="button" onclick="search('동작구 을')">동작구(을)</button>
            <button class="button" onclick="noResult()">-</button>
            <br>
              
          </div>
        </div>

       </div>
         </div>
         <div class="btn-group">
          <div class="dropdownC">
            <button class="button">관악구</button>
            <div class="dropdown-contentC">
              <button class="button" onclick="search('관악구 갑')">관악구(갑)</button>
              <button class="button" onclick="search('관악구 을')">관악구(을)</button>
              <button class="button" onclick="noResult()">-</button>
              <br>
                
            </div>
            </div>
            <div class="dropdownC">
              <button class="button">서초구</button>
              <div class="dropdown-contentC">
                <button class="button" onclick="search('서초구 갑')">서초구(갑)</button>
                <button class="button" onclick="search('서초구 을')">서초구(을)</button>
                <button class="button" onclick="noResult()">-</button>
                <br>
                  
              </div>
              </div>
          <div class="dropdownC">
            <button class="button">강남구</button>
            <div class="dropdown-contentC">
              <button class="button" onclick="search('강남구 갑')">강남구(갑)</button>
              <button class="button" onclick="search('강남구 을')">강남구(을)</button>
              <button class="button" onclick="search('강남구 병')">강남구(병)</button>
              <br>
                
            </div>
            </div>
           
            <div class="dropdownC">
              <button class="button">송파구</button>
              <div class="dropdown-contentC">
                <button class="button" onclick="search('송파구 갑')">송파구(갑)</button>
                <button class="button" onclick="search('송파구 을')">송파구(을)</button>
                <button class="button" onclick="search('송파구 병')">송파구(병)</button>
                <br>
                  
              </div>
              </div>
              <div class="dropdownC">
              <button class="button">강동구</button>
              <div class="dropdown-contentC">
                <button class="button" onclick="search('강동구 갑')">강동구(갑)</button>
                <button class="button" onclick="search('강동구 을')">강동구(을)</button>
                <button class="button" onclick="noResult()">-</button>
                <br>
                  
              </div>
              </div>
         </div>
	<div style="height: 60px;"></div>
	<div style="width:54%;margin:0 auto 3% auto;background:white;border:#cccccc;">
		<div style="width:100%;height:100%;padding:3%;">
		<div style="text-align:center;display:block;margin-left:8%;margin-right:auto;border:2.5px solid #7d9690;width:77%;padding:1%;">
		<c:choose>
		<c:when test="${category eq 'n' and region eq 'n' }">
			<span style="font-size:23px;"><span class="fontbold">전체 </span>지역 <span class="fontbold">전체 </span>의원의 <span class="fontbold">전체 </span>공약은 총 <span class="fontbold">${total }</span>개입니다.</span>
		</c:when>
		<c:when test="${category ne 'n' and region eq 'n' }">
			<span style="font-size:23px;"><span class="fontbold">전체 </span>지역 <span class="fontbold">전체 </span>의원의 <span class="fontbold">${category } </span>공약은 총 <span class="fontbold">${total }</span>개입니다.</span>
		</c:when>
		<c:when test="${category eq 'n' and region ne 'n' }">
			<span style="font-size:23px;"><span class="fontbold">${region } </span>지역 <span class="fontbold">${cateList[0].name } </span>의원의 <span class="fontbold">전체 </span>공약은 총 <span class="fontbold">${total }</span>개입니다.</span>
		</c:when>
		<c:when test="${category ne 'n' and region ne 'n' }">
			<span style="font-size:23px;"><span class="fontbold">${region } </span>지역 <span class="fontbold">${cateList[0].name } </span>의원의 <span class="fontbold">${category } </span>공약은 총 <span class="fontbold">${total }</span>개입니다.</span>
		</c:when>
		</c:choose>
		</div>
		
		<table style="width:80%;margin-left:8%;margin-right:auto;">
		<c:choose>
			<c:when test="${total != 0 }">
				<tr>
					<td width="15%" style="color:white;background:#7d9690;font-weight:bold;font-size:18px;">지역</td>
					<td width="10%" style="color:white;background:#7d9690;font-weight:bold;font-size:18px;">이름</td>
					<td width="35%" style="color:white;background:#7d9690;font-weight:bold;font-size:18px;">공약</td>
				</tr>
				<c:forEach var="data" items="${cateList }" varStatus="status">
						<tr>
							<td>${data.region}</td>
							<td>${data.name}</td>
							<td>${data.promise }</td>
						</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
					<tr>
						<td colspan="3"><h3>검색 결과가 없습니다.</h3></td>	
					</tr>
			</c:otherwise>
		</c:choose>
		</table>
		
			<input type="hidden" id="category" value="${category }" />
			<input type="hidden" id="region" value="${region }" />
			
			<div style="text-align:center;">
			      <c:choose>
			        <c:when test="${totalPromise > 10 }">
				      <c:forEach   var="p" begin="1" end="10" step="1" >
				         <c:if test="${section > 1 && p==1 }">
				          <span class="pages" onclick="sendPage(${section-1},${(section-1)*10 })">&nbsp; ◀</span>
				         </c:if>
				         
				         <c:if test="${(section-1)*10 +p <=totalPromise }">
				         <c:choose>
				         	<c:when test="${(section-1)*10 +p == page }">
				         		<span class="pages" style="font-weight:bold;" onclick="sendPage(${section},${(section-1)*10 +p})" >${(section-1)*10 +p }&nbsp;&nbsp;</span>
				         	</c:when>
				         	<c:otherwise>
				         		<span class="pages" onclick="sendPage(${section},${(section-1)*10 +p})" >${(section-1)*10 +p }&nbsp;&nbsp;</span>
				         	</c:otherwise>
				         </c:choose>
				         </c:if>
				         
				         <c:if test="${p==10 && (section-1)*10 +p < totalPromise }">
				         	<span class="pages" onclick="sendPage(${section+1},${section*10+1})" >&nbsp; ▶</span>
				         </c:if>
				      </c:forEach>
			        </c:when>
			        	        
			        <c:when test="${totalPromise == 10 }" >
				      <c:forEach   var="p" begin="1" end="10" step="1" >
				      	<c:choose>
				      	  <c:when test="${p==page }">
				        	<span class="pages" style="font-weight:bold;" onclick="sendPage(1,${p})">${p }&nbsp;&nbsp;</span>
				          </c:when>
				          <c:otherwise>
				          	<span class="pages" onclick="sendPage(1,${p})">${p }&nbsp;&nbsp;</span>
				          </c:otherwise>
				         </c:choose>
				      </c:forEach>
			        </c:when>
			        
			        <c:when test="${totalPromise < 10 }" >
				      <c:forEach   var="p" begin="1" end="${(totalPromise-1)/10 +1}" step="1" >
				         <c:choose>
				           <c:when test="${p==page }">
				            <span class="pages" style="font-weight:bold;" onclick="sendPage(1,${p})">${p }&nbsp;&nbsp;</span>
				          </c:when>
				          <c:otherwise>
				            <span class="pages" onclick="sendPage(1,${p})">${p }&nbsp;&nbsp;</span>
				          </c:otherwise>
				        </c:choose>
				      </c:forEach>
			        </c:when>
			      </c:choose>
			</div>
			</div>
		</div>
</body>
</html>