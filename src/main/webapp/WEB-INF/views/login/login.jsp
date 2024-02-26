<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/loginstyle.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/WEB-INF/views/layout/header.jsp" %>


	<div align="center">
	<div class="login-form">
		<h3> 로그인 </h3>
		<form action="${ pageContext.request.contextPath }/login/check" method="post" onsubmit="return check(this)">
					<input placeholder="아이디" class="text-field" type="text" name="user_id" value="${user_id}">
			
					<input placeholder="비밀번호" class="text-field" type="password" name="user_password">
						<span class="ckid">
							<c:choose>
								<c:when test="${check }">
									<input type="checkbox" name="ckid" value="true" checked="checked">
								</c:when>
								<c:otherwise>
									<input type="checkbox" name="ckid" value="true">
								</c:otherwise>
							</c:choose>
							<small>아이디 저장</small> 
						</span>
						<br>
						<input class="submit-btn" type="submit" value="Login">
		<div class="links">
	<a href="${ pageContext.request.contextPath }/login/findform?mode=user_id">ID찾기</a> | 
	<a href="${ pageContext.request.contextPath }/login/findform?mode=user_pw">PW찾기</a> 
	</div>
	</form>
	</div>
</div>

<script type="text/javascript">
	function check(f) {
		if(f.user_id.value == ""){
			alert("ID를 입력하십시오!");
			f.user_id.focus();
			return false;
		}else if(f.user_password.value == ""){
			alert("PW를 입력하십시오!");
			f.user_password.focus();
			return false;
		}
		
		return true;
	}
</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>

