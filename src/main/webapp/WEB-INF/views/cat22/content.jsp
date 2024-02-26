<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<script>
	
	function deleteAction() {
		var check = confirm("삭제 하시겠습니까?");
		
		if(!check){
			return;
		}
		
		location.href = '${pageContext.request.contextPath }/cat22/delete?no=${vo.NO}';
	}
	
</script>

<%@include file="/WEB-INF/views/layout/header.jsp"%>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>

<div class="main_image">
     <a href="${pageContext.request.contextPath }/cat22/list"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px">
</a>
    <h1 class="main_image_text" style="font-size:30px">터미널정보</h1>

</div>
<br>
<div class="main"> 
	<div id="page-inner">  
		 <div class="row"> 

	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
		<tr>
			<th>제목</th>
			<td>${vo.MNGBRD_TITLE }</td> <!-- map에서는 key값을 대문자로 받아 오기 때문에 대문자로 입력해야 오류가 나지 않음 -->
			<th>조회수</th>
			<td>${vo.MNGBRD_HIT }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${vo.MANAGER_NAME }</td>
			<th>작성일</th>
			<fmt:parseDate value="${vo.MNGBRD_DATE }" var="mngDate" pattern="yyyy-MM-dd HH:mm"/>
			<td><fmt:formatDate value="${mngDate }" pattern="yyyy-MM-dd HH:mm"/></td>
		</tr>
		<tr>
			<td colspan="4">
				${vo.MNGBRD_CONTENT }
			</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td colspan="3">
				<a href="${pageContext.request.contextPath }/resources/upload/${vo.MNGBRD_FILE}" download>${vo.MNGBRD_FILE}</a> 
			</td>
		</tr>
	</table>
	
	<div class="btnBox">
		<c:if test="${mngcheck == vo.MANAGER_NO}">
			<input class="btn" type="button" value="수정" onclick="location.href='${pageContext.request.contextPath }/cat21/updateform?no=${vo.NO}'">
			<input class="btn" type="button" value="삭제" onclick="deleteAction()">
		</c:if>

		<input class="btn" type="button" value="목록" onclick="location.href='${pageContext.request.contextPath }/cat22/list'">
	</div>
	</div>
	</div>
	
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>
















