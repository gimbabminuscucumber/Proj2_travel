<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/loginstyle.css">

<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="login-form">

	<small>${msg }</small>
	<br>
	
		<div class="links">
	<c:choose>
		<c:when test="${check }">
			<a href="${pageContext.request.contextPath }/userinfo/mypage">MyPage</a>
			
		</c:when>
		<c:otherwise>
			<a href="${pageContext.request.contextPath }/login/findform?mode=user_id">ID찾기</a> | 
			<a href="${pageContext.request.contextPath }/login/findform?mode=user_pw">PW찾기</a> | 
			<a href="${pageContext.request.contextPath }/login/loginform">Login</a>
		</c:otherwise>
	</c:choose>
	</div>
</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>


		
		