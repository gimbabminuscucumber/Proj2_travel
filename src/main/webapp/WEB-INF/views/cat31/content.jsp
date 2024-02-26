<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>

</script>

<%@include file="/WEB-INF/views/layout/header.jsp"%>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>

<div class="main_image">
     <a href="${pageContext.request.contextPath}/cat31/list"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px">
</a>
    <h1 class="main_image_text" style="font-size:30px">섬정보검색</h1>

</div>
<br>


<div class="main"> 
	<div id="page-inner">
		<table class="table table-striped table-bordered table-hover" id="dataTables-example">
			<tr>
				<th colspan="4">
					${vo.island_name}
				</th>
			</tr>
			<tr>
				<th>주소</th>
				<td colspan="3">${vo.island_addr}</td>
			</tr>
			<tr>
				<th>위치</th>
				<td>${vo.island_longitude}</td>
				<th>면적</th>
				<td>${vo.island_area}</td>
			</tr>
			<tr>
				<th>섬 정보</th>
				<td colspan="3">${vo.island_info}</td>
			</tr>

		</table>
			
		<c:if test="${!empty mngcheck }">
			<div class="btnBox">
				<button class="btn" onclick="document.location.href='${pageContext.request.contextPath }/cat31/writeform'">관리자 글쓰기</button>
				<input class="btn" type="button" value="수정" onclick="location.href='${pageContext.request.contextPath }/cat31/updateform?no=${vo.no}'">
				<input class="btn" type="button" value="삭제" onclick="deleteAction()">
			</div>
		</c:if>
		
		<input class="btn" type="button" value="목록" onclick="location.href='${pageContext.request.contextPath }/cat31/list'">


	</div>
	
</div>
</div>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>
















