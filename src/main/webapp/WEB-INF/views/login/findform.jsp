<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function check(f){
		if(f.user_id.value == ''){
			alert("아이디를 입력 하십시오!");
			f.user_id.focus();
			return false;
		}
		if(f.user_name.value == ''){
			alert("이름를 입력 하십시오!");
			f.user_name.focus();
			return false;
		}
		if(f.user_tel.value == ''){
			alert("전화번호를 입력하십시오!");
			f.user_tel.focus();
			return false;
		}
		if(f.user_birth.value == ''){
			alert("생년월일을 입력 하십시오!");
			f.user_birth.focus();
			return false;
		}
		
		return true;
	}

</script>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/loginstyle.css">

<%@ include file="/WEB-INF/views/layout/header.jsp" %>

	<div align="center">
	<div class="login-form">
		<form action="${ pageContext.request.contextPath }/login/find" onsubmit="return check(this);" method="post" name="find">
			<c:choose>
				<c:when test="${param.mode == 'user_id' }">
					<input type="hidden" name="mode" value="user_id">
					<h3>아이디찾기</h3>
				</c:when>
				<c:otherwise>
					<input type="hidden" name="mode" value="user_pw">					
					<h3>패스워드찾기</h3>
				</c:otherwise>
			</c:choose>
				<c:if test="${param.mode == 'user_pw' }">
						<input placeholder="아이디" class="text-field" type="text" name="user_id">
				</c:if>
					<input placeholder="이름" class="text-field" type="text" name="user_name">
						<input placeholder="전화번호(하이픈없이입력)" class="text-field" type="text" size = "15" maxlength="11" name = "user_tel">
				
						<input placeholder="생년월일 ex)19971010" class="text-field" type="text" name = "user_birth">
					
						<input class="submit-btn" type="submit" value="찾기">
						<input type="button" value="Reset" onclick="document.find.reset()">
		</form>
	</div>
	</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>