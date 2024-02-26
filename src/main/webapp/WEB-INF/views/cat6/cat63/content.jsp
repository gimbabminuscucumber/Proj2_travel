<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	
	table {
		width: 800px;
		border-spacing: 0px;
	} 

	
	th {
		width: 15%;
		text-align: center;
		background-color: #EAEAEA;
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
		
		location.href = '${pageContext.request.contextPath }/cat63/delete?no=${vo.NO}';
	}
	
</script>
<%@include file="/WEB-INF/views/layout/header.jsp"%>
<div align="center">
	<br><h2>나의섬 여행담</h2><br>
	<table class="topLine">
		<tr class="btmLine">
			<th width="15%">제목</th>
				<td align="center">${vo.SUGG_TITLE }</td>
		</tr>		
		<tr class="btmLine">		
			<th>작성자</th>
				<td align="center">${vo.USER_NAME }</td>
		</tr>
		<tr class="btmLine">
			<th>조회수</th>
				<td align="center">${vo.SUGG_HIT }</td>
		</tr>
		<tr class="btmLine">
			<th>작성일</th>
				<td align="center">${vo.SUGG_DATE }</td>
		</tr>
		<tr class="btmLine">
			<th>내용</th>
				<td height="400px">${vo.SUGG_CONTENT }</td>
		</tr>
		<tr class="btmLine">
			<th>첨부파일</th>
				<td><a href="${pageContext.request.contextPath }/resources/upload/${vo.SUGG_FILE}" download>${vo.SUGG_FILE}</a></td>
		</tr>
	</table>
	<br>
	
	<!-- 기능 버튼 -->
	<div class="btnBox">
		<c:choose>
			<c:when test="${!empty login }">
				<c:choose>
					<c:when test="${!empty mngcheck }">
						<input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath }/cat63/list'">
						<input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath }/cat63/updateform?no=${vo.NO }'">
						<input type="button" value="삭제" onclick="deleteAction()">
					</c:when>
				</c:choose>
			</c:when>
			<c:otherwise>
				<input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath }/cat63/list'">
			</c:otherwise>
		</c:choose>
		
	</div>
</div>
<br>
<!-- summersnote 적용 코드 -->
<script type="text/javascript">
	$(document).ready(function() {
 	 	$('#summernote').summernote();
	});
</script>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>
