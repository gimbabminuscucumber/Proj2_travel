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

	<c:if test="${param.port_no == 3 }">
<div align="center">
<h2>녹동</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
</div>
	</c:if>
<br>
	<c:if test="${param.port_no == 14 }">
<div align="center">
<h2>포항</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
</div>
	</c:if>
<br>
<div align="center">
	<c:if test="${param.port_no == 6 }">
<h2>목포</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
	</c:if>
</div>

<div align="center">
	<c:if test="${param.port_no == 7 }">
<h2>보령</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
	</c:if>
</div>

<div align="center">
	<c:if test="${param.port_no == 8 }">
<h2>부산</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
	</c:if>
</div>

<div align="center">
	<c:if test="${param.port_no == 9 }">
<h2>여수</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
	</c:if>
</div>

<div align="center">
	<c:if test="${param.port_no == 10 }">
	<h2>완도</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
	</c:if>
</div>

<div align="center">
	<c:if test="${param.port_no == 11 }">
	<h2>인천</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
	</c:if>
</div>

<div align="center">
	<c:if test="${param.port_no == 12 }">
	<h2>제주</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
	</c:if>
</div>

<div align="center">
	<c:if test="${param.port_no == 13 }">
	<h2>통영</h2>
		<table class="styled-table">
			<tr>
				<th>일출시간</th>
				<th>일몰시간</th>
				<th>저조</th>
				<th>고조</th>
				<th>저조 물높이</th>
				<th>고조 물높이</th>
			</tr>
			<tr>
				<c:forEach var="vo" items="${list }">
				<td>
					${vo.sunrise }
				</td>
				<td>
					${vo.sunset }
				</td>
				<td>
					${vo.lowTide }
				</td>
				<td>
					${vo.highTide }
				</td>
				<td>
					${vo.lowWaterLevel }
				</td>
				<td>
					${vo.highWaterLevel }
				</td>
				</c:forEach>
			</tr>
		</table>
	</c:if>
</div>
