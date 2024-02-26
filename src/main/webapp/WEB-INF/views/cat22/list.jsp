<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<script type="text/javascript">
function check(f) {
	
	if(f.type.value == "num"){
		var num_pattern = /^[0-9]{1,20}$/;
		
		if(f.word.value == "" || !num_pattern.test(f.word.value)){
			alert("글번호를 입력하십시오!");
			return false;
		}
	}else if(f.word.value == ""){
		alert("검색어를 입력하십시오!");
		return false;
	}
	
	return true;
}

</script>    
<%@ include file="/WEB-INF/views/layout/header.jsp" %>	
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>

<div class="main_image">
     <a href="${pageContext.request.contextPath }/cat22/list"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px">
</a>
    <h1 class="main_image_text" style="font-size:30px">터미널 정보</h1>

</div>
<br>
<div class="main"> 
<div id="page-inner">  
		 <div class="row"> 
 <div class="card-content">
         <div class="table-responsive"> 
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
		<thead>
		<tr>
			<th class="center">번호</th>
			<th class="center">글제목</th>
			<th class="center">글쓴이</th>
			<th class="center">작성일</th>
			<th class="center">조회수</th>
		</tr>
		</thead>
		<tbody>
		<c:choose>
		
			<c:when test="${list == null}">
				<tr class="gradeA">
					<td colspan="5" align="center">
						<span style="font-weight: bold;">작성한 글이 없습니다.</span>
					</td>
				</tr>
			</c:when>
			
			<c:otherwise>
				<c:forEach var="dto" items="${list }">
					<tr class="gradeA">
						<td class="center">${dto.num }</td>
						<td class="center"><a href="${pageContext.request.contextPath }/cat22/content?no=${dto.no}">${dto.mngbrd_title}</a></td>
						<td class="center">${dto.manager_name }</td>
						<fmt:parseDate value="${dto.mngbrd_date }" var="mngDate" pattern="yyyy-MM-dd"/>
						<td class="center"> <fmt:formatDate value="${mngDate }" pattern="yyyy-MM-dd"/></td>
						<td class="center">${dto.mngbrd_hit }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
			
		</c:choose>
		</tbody>
	</table>
	
	<div align="center">
		<c:if test="${paging.prev}">
			<a href="${pageContext.request.contextPath}/cat22/list?page=${paging.begin-1}&type=${param.type}&word=${param.word}">[이전]</a>
		</c:if>
		
		<c:forEach var="i" begin="${paging.begin}" end="${paging.end}" step="1">
			<c:choose>
				<c:when test="${i==paging.page}">
					<strong>[${i}]</strong>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/cat22/list?page=${i}&type=${param.type}&word=${param.word}">[${i}]</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<c:if test="${paging.next}">
			<a href="${pageContext.request.contextPath}/cat22/list?page=${paging.end+1}&type=${param.type}&word=${param.word}">[다음]</a>
		</c:if>
	</div>
	
	<br>
	
	<c:if test="${!empty mngcheck }">
		<div class="btnBox">
			<button class="btn" onclick="document.location.href='${pageContext.request.contextPath }/cat22/writeform'">관리자 글쓰기</button>
		</div>
	</c:if>
	
	<div class="col-md-4 mb-3">
	</div>
	<div class="col-md-4 mb-3">
	</div>
	
	
	<div class="col-md-4 mb-3">
	<form action="${pageContext.request.contextPath }/cat22/list" method="get" onsubmit="return check(this)" >
		<span style="float: center;">
			<select name="type" class="form-control input-sm">
				<option value="num" ${param.type == 'num' ? 'selected' : '' }>글번호로 검색</option>
				<option value="mngbrd_title" ${param.type == 'mngbrd_title' or empty param.type ? 'selected' : '' }>제목으로 검색</option>
				<option value="mngbrd_content" ${param.type == 'mngbrd_content' ? 'selected' : '' }>내용으로 검색</option>
			</select>
			<input type="text" name="word" placeholder="검색어를 입력하세요" value="${param.word}" autocomplete="off">
			<input class="btn" type="submit"  value="검색">
		</span>
	</form>		
	
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>



	

	
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>		





