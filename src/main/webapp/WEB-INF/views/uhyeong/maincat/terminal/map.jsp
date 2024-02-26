<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">
	
</style>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>


<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/summernote/js/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/css/summernote-lite.css">

<title>Insert title here</title>
</head>
<body>

<style>
  .styled-table {
    border-collapse: collapse;
    width: 100%;
  }

  .styled-table th,
  .styled-table td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  .styled-table th {
    background-color: #f2f2f2;
    font-weight: bold;
  }

  .styled-table tr:nth-child(even) {
    background-color: #f9f9f9;
  }
</style>

<div align="center">
<c:if test="${param.port_no == 14 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d413053.22609781724!2d129.21819304025635!3d36.0208226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3567040f8f257d8f%3A0x9bb1b6de0b96aef4!2z7Y-s7ZWt7Iug7ZWt!5e0!3m2!1sko!2skr!4v1686879499842!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="center">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>

<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>

<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			</tr>
			<tr>
				<th colspan="4">가격</th>
				<tr>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	
</div>

</c:if>
</div>
<br>

<div align="center">
<c:if test="${param.port_no == 3 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26296.244185499338!2d127.098485827446!3d34.52745464320207!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35727aa8ef86c3a7%3A0xc415e146e1f20b99!2z64W564-Z7ZWt!5e0!3m2!1sko!2skr!4v1686878963365!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>

<c:if test="${pllist == null }">
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
</c:if>

<c:if test="${tlist == null }">
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="center">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<c:if test="${ptlist == null }">
<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			</tr>
			<tr>
				<th colspan="4">가격</th>
				<tr>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	
</div>

</c:if>
</div>
<br>
<div align="center">
<c:if test="${param.port_no == 6 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26215.927033659213!2d126.36266634516808!3d34.78100491351176!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3573a4db27271d4d%3A0xc9dfae05659c8fde!2z66qp7Y-s7ZWt!5e0!3m2!1sko!2skr!4v1686879013679!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>

<c:if test="${pllist == null }">
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
</c:if>

<c:if test="${tlist != null }">
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="center">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<c:if test="${ptlist == null }">
<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>
</c:if>


<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			</tr>
			<tr>
				<th colspan="4">가격</th>
				<tr>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	
</div>

</c:if>
</div>
<br>

<div align="center">
<c:if test="${param.port_no == 7 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25715.000278663043!2d126.48930935022854!3d36.32745950762755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35708417cec49ecb%3A0xd3751257141f339b!2z64yA7LKc7ZWt!5e0!3m2!1sko!2skr!4v1686879054516!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>

<c:if test="${pllist == null }">
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
</c:if>

<c:if test="${tlist != null }">
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="center">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<c:if test="${ptlist == null }">
<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>
</c:if>


<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			</tr>
			<tr>
				<th colspan="4">가격</th>
				<tr>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
				</c:if>
				</c:forEach>
			</tr>
		</table>
		<br>
	
</div>

</c:if>
</div>

<br>
<div align="center">
<c:if test="${param.port_no == 8 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26113.006758996045!2d129.02176914620628!3d35.10356836795936!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568e96fa83af6d3%3A0x5f69ab4f8cd9e7cc!2z67aA7IKw7ZWt!5e0!3m2!1sko!2skr!4v1686879085184!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>

<c:if test="${pllist != null }">
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
</c:if>

<c:if test="${tlist != null }">
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<c:if test="${ptlist != null }">
<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>
</c:if>


<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" begin="1" end="2" step="1" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" begin="1" end="2" step="1" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			
				<tr>
				<th>가격</th>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				
			<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
				<th>${vo.park_ctgr }</th>
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
					</tr>
					<tr>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	
</div>

</c:if>
</div>
<br>

<div align="center">
<c:if test="${param.port_no == 9 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26227.071612865864!2d127.73062234505569!3d34.745919729289476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356dd8ec8e59ec0d%3A0x48d9225498c56408!2z7Jes7IiY7ZWt!5e0!3m2!1sko!2skr!4v1686879118941!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="center">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>

<c:if test="${ptlist == null }">
<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			</tr>
			<tr>
				<th colspan="4">가격</th>
				<tr>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	
</div>

</c:if>
</div>

<br>

<div align="center">
<c:if test="${param.port_no == 10 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26362.36715373907!2d126.74178064369232!3d34.31748312109735!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3572e5751271d811%3A0x97fe2d1bae64c704!2z7JmE64-E7ZWt!5e0!3m2!1sko!2skr!4v1686879144300!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>
<c:if test="${pllist == null }">
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
</c:if>

<c:if test="${tlist == null }">
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="center">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<c:if test="${ptlist == null }">
<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			</tr>
			<tr>
				<th colspan="4">가격</th>
				<tr>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	
</div>

</c:if>
</div>
<br>

<div align="center">
<c:if test="${param.port_no == 11 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25336.417664167904!2d126.60504575406492!3d37.45948922817326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7863e228f613%3A0x653dfc66bd5c0f6a!2z7J247LKc7ZWt!5e0!3m2!1sko!2skr!4v1686879208028!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>

<c:if test="${pllist == null }">
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>

</c:if>
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="center">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>


<c:if test="${ptlist == null }">
<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" begin="1" end="2" step="1" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" begin="1" end="2" step="1" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			
				<tr>
				<th>가격</th>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				
			<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
				<th>${vo.park_ctgr }</th>
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
					</tr>
					<tr>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	
</div>

</c:if>
</div>
<br>

<div align="center">
<c:if test="${param.port_no == 12 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26610.09620039632!2d126.51604164119989!3d33.52057247361297!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350ce3439db33a4f%3A0x2d09a68f6a55c999!2z7KCc7KO87ZWt!5e0!3m2!1sko!2skr!4v1686879230636!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>

<c:if test="${tlist == null }">
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="center">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>

<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" begin="1" end="2" step="1" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" begin="1" end="2" step="1" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			
				<tr>
				<th>가격</th>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				
			<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
				<th>${vo.park_ctgr }</th>
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
					</tr>
					<tr>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	
</div>

</c:if>
</div>
<br>

<div align="center">
<c:if test="${param.port_no == 13 }">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3274.660542290628!2d128.415130688855!3d34.83962650000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356ec791ccdf6b5b%3A0x897db4b23e3f74bd!2z7Ya17JiB7ZWt7Jes6rCd7ISg7YSw66-464SQ!5e0!3m2!1sko!2skr!4v1686879267719!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
</iframe><br>

<c:if test="${pllist == null }">
<h2>항공편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${pllist }">
		<td>
			${vo.plane_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
</c:if>

<c:if test="${tlist == null}">
<h2>기차편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_name }
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${tlist }">
		<td>
			${vo.train_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="center">
	<c:forEach var="vo" items="${tlist }">
	<p>${vo.train_info1 }</p>
	<br>
	<p>${vo.train_info2 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<c:if test="${ptlist == null }">
<h2>고속버스편</h2>
<table class="styled-table">
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_name }	
		</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach var="vo" items="${ptlist }">
		<td>
			${vo.public_tel }
		</td>
		</c:forEach>
	</tr>
</table>
<br>
<div align="left">
	<c:forEach var="vo" items="${ptlist }">
		<br>
		<p>${vo.public_info1 }</p>
		<br>
		<p>${vo.public_info2 }</p>
		<br>
		<p>${vo.public_info3 }</p>
	</c:forEach>
</div>
<br>
</c:if>

<div align="left">
	<h2>주차안내</h2>
	<c:forEach var="vo" begin="1" end="2" step="1" items="${plist }">
	<p>${vo.park_info }</p>
	<p>${vo.park_addr }</p>
	</c:forEach>
		<table class="styled-table">
			<tr>
				<c:forEach var="vo" begin="1" end="2" step="1" items="${plist }">
					<td colspan="2">${vo.park_name } / ${vo.park_tel }</td>
				</c:forEach>
			
				<tr>
				<th>가격</th>
					<th>1일가격</th>
					<th>10분가격</th>
					<th>월주차가격</th>
					<th>30분가격</th>
				</tr>
				
			<tr>
				<c:forEach var="vo" items="${plist }">
				<c:if test="${vo.park_price != null}">
					 <td colspan="4">${vo.park_price }</td>
				</c:if>
				<c:if test="${vo.park_price == null }">
				<th>${vo.park_ctgr }</th>
					<td>${vo.park_halfprice }</td>
					<td>${vo.park_tenprice }</td>
					<td>${vo.park_dayprice }</td>
					<td>${vo.park_monthprice }</td>
					</tr>
					<tr>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	
</div>

</c:if>
</div>
<br>