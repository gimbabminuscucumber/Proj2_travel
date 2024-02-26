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

<br><br><br>
<div align="center">
	<table class="styled-table">
		<tr>
			<th>선사명</th>
			<th colspan="2">운행구간</th>
		</tr>
		<tr>
			<td>${vo.ship_company }</td>
			<td colspan="2">${vo.ship_interval }</td>
		</tr>
		<tr>
			<th>연락처</th>
			<th colspan="2">URL</th>
		</tr>
		<tr>
			<td>${vo.ship_comtel }</td>
			<td colspan="2"><a href="${vo.ship_comurl }">${vo.ship_comurl }</a></td>
		</tr>
		<tr>
			<th>선종</th>
			<th>진수일자</th>
			<th>여객정원</th>
		</tr>
		<tr>
			<td>${vo.ship_kind }</td>
			<td>${vo.ship_initdate }</td>
			<td>${vo.ship_capacity }</td>
		</tr>
		<tr>
			<th>길이</th>
			<th>너비</th>
			<th>깊이</th>
		</tr>
		<tr>
			<td>${vo.ship_length }</td>
			<td>${vo.ship_width }</td>
			<td>${vo.ship_height }</td>
		</tr>
		<tr>
			<th>총톤수</th>
			<th>항해속력</th>
			<th>최대속력</th>
		</tr>
		<tr>
			<td>${vo.ship_ton }</td>
			<td>${vo.ship_knot }</td>
			<td>${vo.ship_max }</td>
		</tr>
	</table>
</div>

<br><br>
