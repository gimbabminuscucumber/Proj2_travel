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
  <div>
  	<h2>불편 신고 사이트</h2>
  </div>  
   <div align="center">
    	<table class="styled-table">
    	<c:forEach var="vo" items="${list }">
    		<tr>
    			<td><a href="${vo.infobrd_url }">${vo.infobrd_title }</a>
    		</tr>
    		<tr>
    		<td>원산도 삽시도 장고도 고대도 효자도</td>
    		</tr>
    	</c:forEach>
    	</table>
    	
    	<br>
    
    </div>
    
    <div align="center">
    	<table class="styled-table">
    	<c:forEach var="vo2" items="${list2 }">
    		<tr>
    			<td><a href="${vo2.infobrd_url }">${vo2.infobrd_title }</a>
    		</tr>
    		<tr>
    		<td>홍도 흑산도 비금도 임자도 가거도 우미도 자은도
				도초도 증도 하의도</td>
    		</tr>
    	</c:forEach>
    	</table>
    	
    	<br>
    
    </div>
    
    <div align="center">
    	<table class="styled-table">
    	<c:forEach var="vo2" items="${list3 }">
    		<tr>
    			<td><a href="${vo2.infobrd_url }">${vo2.infobrd_title }</a>
    		</tr>
    		<tr>
    		<td>보길도 노하도 고금도 약산도 신지도 생일도
			청산도 금일도 금당도</td>
    		</tr>
    	</c:forEach>
    	</table>
    	
    	<br>
    
    </div>
    <div align="center">
    	<table class="styled-table">
    	<c:forEach var="vo2" items="${list4 }">
    		<tr>
    			<td><a href="${vo2.infobrd_url }">${vo2.infobrd_title }</a>
    		</tr>
    		<tr>
    		<td>비진도 소매물도 한산도 욕지도 사람도 연화도</td>
    		</tr>
    	</c:forEach>
    	</table>
    	
    	<br>
    
    </div>
    <div align="center">
    	<table class="styled-table">
    	<c:forEach var="vo2" items="${list5 }">
    		<tr>
    			<td><a href="${vo2.infobrd_url }">${vo2.infobrd_title }</a>
    		</tr>
    		<tr>
    		<td>거문도 백도 사도 초도 무학(금오도) 연도(소리도)
				안도 손죽도 축정(외나로도)</td>
    		</tr>
    	</c:forEach>
    	</table>
    
    </div>
    	