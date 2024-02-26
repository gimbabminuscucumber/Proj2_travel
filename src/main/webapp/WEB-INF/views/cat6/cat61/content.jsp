<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
	
	function deleteAction() {
		var check = confirm("삭제 하시겠습니까?");
		
		if(!check){
			return;
		}
		
		location.href = '${pageContext.request.contextPath }/cat6/cat61/delete?no=${vo.NO}';
	}
	
	
	
</script>
<%@include file="/WEB-INF/views/layout/header.jsp"%>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>
<div align="center">
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
		<tr>
			<th>제목</th>
			<td>${vo.RESVINQUIRE_TITLE }</td>
			<th>조회수</th>
			<td>${vo.RESVINQUIRE_HIT }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${vo.USER_NAME }</td>
			<th>작성일</th>
			<td>${vo.RESVINQUIRE_DATE }</td>
		</tr>
		<tr>
			<td colspan="4">
				${vo.RESVINQUIRE_CONTENT }
			</td>
		</tr>
	</table>
	<table id="comment">
		<tr>
			<td>관리자 : ${vo.RESVINQUIRE_COMMENT }</td>
		</tr>
	</table>
	<div class="btnBox">
		<c:if test="${login == vo.USER_NO }">
			<input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath }/cat6/cat61/updateform?no=${vo.NO}'">
			<input type="button" value="삭제" onclick="deleteAction()">
		</c:if>
		<c:if test="${mngcheck != null }">
			<input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath }/cat6/cat61/updateform?no=${vo.NO}'">
			<input type="button" value="삭제" onclick="deleteAction()">
			<form action="${pageContext.request.contextPath }/cat6/cat61/reply">
			<table>
				<tr>
					<td>
						<input type="text" name="resvinquire_comment">
						<input type="hidden" name="no" value="${vo.NO}">
					</td>
				</tr>
			</table>
			<c:if test="${vo.RESVINQUIRE_COMMENT == null }">
				<input type="submit" value="답변">
			</c:if>
			</form>
		</c:if>
		<input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath }/cat6/cat61/list'">
	</div>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>
















