<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<style type="text/css">
	
	table {
		width: 800px;
		border-spacing: 0px;
	} 
	
	th {
		width: 15%;
		background-color: #EAEAEA;
		text-align: center;
		align: center;
	}
	
	.topLine{
		border-top: 2px solid #172C51;	
	}
	
	.btmLine {
		border-bottom: 1px solid #172C51;
	}
	
</style>
<script>
	function deleteAction() {
		var check = confirm("삭제 하시겠습니까?");
		
		if(!check){
			return;
		}
		
		location.href = '${pageContext.request.contextPath }/cat51/delete?no=${vo.NO}';
	}
	
</script>
<%@include file="/WEB-INF/views/layout/header.jsp"%>

<!-- 상단 카테고리 이름 들어간 박스-->
<section class="breadcrumb breadcrumb_bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb_iner">
                    <div class="breadcrumb_iner_item text-center">
                        <h2>새로운소식</h2>
                        <p>업데이트되는 신규 소식들을 만나보세요!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<br>

<div>
	<br><h2>새로운 소식</h2><br>
	<table class="topLine">
		<tr class="btmLine">
			<th>제목</th>
				<td colspan="4">${vo.MNGBRD_TITLE }</td> <!-- map에서는 key값을 대문자로 받아 오기 때문에 대문자로 입력해야 오류가 나지 않음 -->
		</tr>
		<tr class="btmLine">
			<th>작성자</th>
				<td width="35%">${vo.MANAGER_NAME }</td>
			<th>작성일</th>
				<fmt:parseDate value="${vo.MNGBRD_DATE }" var="mngDate" pattern="yyyy-MM-dd"/>
				<td><fmt:formatDate value="${mngDate }" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr class="btmLine">
			<th height="400px">내용</th>
			<td colspan="4">
				${vo.MNGBRD_CONTENT }
			</td>
		</tr>
		<tr class="btmLine">
			<th>첨부파일</th>
			<td colspan="4">
				<a href="${pageContext.request.contextPath }/resources/upload/${vo.MNGBRD_FILE}" download>${vo.MNGBRD_FILE}</a> 
			</td>
		</tr>
	</table>
	<br>
	
	<!-- 기능 버튼 -->
	<div class="btnBox">
		<c:if test="${mngcheck == vo.MANAGER_NO}">
			<input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath }/cat51/updateform?no=${vo.NO}'">
			<input type="button" value="삭제" onclick="deleteAction()">
		</c:if>

		<input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath }/cat51/list'">
	</div>
	
</div>
<br>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>
