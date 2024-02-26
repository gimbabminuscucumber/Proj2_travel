<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<style type="text/css">

	table {
		width: 800px;
		border-spacing: 0px;
		text-align: center; 
	} 
	
	th{
		border-spacing: 0px;
		text-align: center; 
		background-color: #172C51;	/* 칸 배경 색상 */
		color: #FFFFFF;				/* 글씨 색상 */
	} 
	
	td { 
		border-spacing: 0px;
		text-align: center; 
	}
	
	.btmLine{
		border-bottom: 1px solid #172C51;	/* <tr> 밑줄*/
	}
	
</style>
<script type="text/javascript">
function check(f) {
	
	if(f.type.value == "no"){
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

<div align="center">
	<br><h2>새로운 소식</h2><br>
	<table>
		<tr class="btmLine" >
			<th>번호</th>
			<th>글제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
		<c:choose>
			<c:when test="${list == null}">
				<tr class="btmLine" >
					<td colspan="5" align="center">
						<span style="font-weight: bold;">작성한 글이 없습니다.</span>
					</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="news" items="${list }">
					<tr class="btmLine" >
						<td>${news.num }</td>
						<td><a href="${pageContext.request.contextPath }/cat51/content?no=${news.no}">${news.mngbrd_title}</a></td>
						<td>${news.manager_name }</td>
						<fmt:parseDate value="${news.mngbrd_date }" var="mngDate" pattern="yy-MM-dd"/>  <!--변환 -->
						<td><fmt:formatDate value="${mngDate }" pattern="yy-MM-dd"/></td> 
						<td>${news.mngbrd_hit }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>	
	<br>
</div>


<!-- 페이징 처리 -->
<div align="center">
	<c:if test="${paging.prev}">
		<a href="${pageContext.request.contextPath}/cat51/list?page=${paging.begin-1}&type=${param.type}&word=${param.word}">[이전]</a>
	</c:if>
	
	<c:forEach var="i" begin="${paging.begin}" end="${paging.end}" step="1">
		<c:choose>
			<c:when test="${i==paging.page}">
				<strong>[${i}]</strong>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/cat51/list?page=${i}&type=${param.type}&word=${param.word}">[${i}]</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<c:if test="${paging.next}">
		<a href="${pageContext.request.contextPath}/cat51/list?page=${paging.end+1}&type=${param.type}&word=${param.word}">[다음]</a>
	</c:if>
</div>
<br>


<!-- 관리자 글쓰기 -->
<c:if test="${!empty mngcheck }">
	<div class="btnBox">
		<button onclick="document.location.href='${pageContext.request.contextPath }/cat51/writeform'">관리자 글쓰기</button>
	</div>
</c:if>
<br>


<!-- 검색 기능 -->
<form action="${pageContext.request.contextPath }/cat51/list" method="get" onsubmit="return check(this)" >
	<span style="float: center;">
		<select name="type">
			<option value="mngbrd_title" ${param.type == 'mngbrd_title' or empty param.type ? 'selected' : '' }>제목으로 검색</option>
			<option value="mngbrd_content" ${param.type == 'mngbrd_content' ? 'selected' : '' }>내용으로 검색</option>
		</select>
		<input type="text" name="word" placeholder="검색어를 입력하세요" value="${param.word}" autocomplete="off">
		<input class="btn" type="submit"  value="검색">
	</span>
</form>		


	
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>		