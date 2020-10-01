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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	/* 페이지 */
	function sendPage(section,page) {
		var category=$('#category').val();
		var region=$('#region').val();
		
	   	var form = document.createElement("form");
	   	form.setAttribute("method", "post");
	   	form.setAttribute("action", "${contextPath}/category/");
	   	var input = document.createElement("input");
	   	input.setAttribute("type","hidden");
	   	input.setAttribute("name","category");
	   	input.setAttribute("value", category);
	   	
	   	var input2 = document.createElement("input");
	   	input2.setAttribute("type","hidden");
	   	input2.setAttribute("name","page");
	   	input2.setAttribute("value", page);
	   	
	   	var input3 = document.createElement("input");
	   	input3.setAttribute("type","hidden");
	   	input3.setAttribute("name","region");
	   	input3.setAttribute("value", region);
	   	
	   	var input4 = document.createElement("input");
	   	input4.setAttribute("type","hidden");
	   	input4.setAttribute("name","section");
	   	input4.setAttribute("value", section);
	   	
	  	form.appendChild(input);
	  	form.appendChild(input2);
	  	form.appendChild(input3);
	  	form.appendChild(input4);
	  	
	  	document.body.appendChild(form);
	  	form.submit();
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
	}

</style>

</head>

<body>
	<span style="font-size:32px;">공약은 총 </span><span style="font-weight:bold;color:blue;font-size:40px;">${total }</span><span style="font-size:32px;">개가 있습니다.</span>
	<table style="width:60%;">
		<tr>
			<td width="15%" style="color:white;background:#a3a3a3;font-weight:bold;font-size:18px;">지역</td>
			<td width="10%" style="color:white;background:#a3a3a3;font-weight:bold;font-size:18px;">이름</td>
			<td width="35%" style="color:white;background:#a3a3a3;font-weight:bold;font-size:18px;">공약</td>
		</tr>
		<c:forEach var="data" items="${cateList }" varStatus="status">
			<c:if test="${status.count%2 eq 0 }">
				<tr>
					<td>${data.region}</td>
					<td>${data.name}</td>
					<td>${data.promise }</td>
				</tr>
			</c:if>
			<c:if test="${status.count%2 !=0 }">
				<tr>
					<td style="background:#efefef;">${data.region}</td>
					<td style="background:#efefef;">${data.name}</td>
					<td style="background:#efefef;">${data.promise }</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>

	<input type="hidden" id="category" value="${category }" />
	<input type="hidden" id="region" value="${region }" />
	
	<div style="text-align:center;">
	      <c:choose>
	        <c:when test="${totalPromise > 10 }">
		      <c:forEach   var="p" begin="1" end="10" step="1" >
		         <c:if test="${section > 1 && p==1 }">
		          <span class="pages" onclick="sendPage(${section-1},${(section-1)*10 })">&nbsp; pre</span>
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
		         	<span class="pages" onclick="sendPage(${section+1},${section*10+1})" >&nbsp; next</span>
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
</body>
</html>