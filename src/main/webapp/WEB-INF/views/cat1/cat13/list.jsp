<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<c:forEach var="vo" items="${list }">
	<tr>
		<td><h4>${vo.terms_title }</h4> - ${vo.terms_subtitle }</td>
	</tr>
	<tr>
		<td>${vo.terms_content }</td>
	</tr>
</c:forEach>
</table>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>	