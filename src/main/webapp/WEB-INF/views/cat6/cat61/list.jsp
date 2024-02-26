<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>


<section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>고객센터</h2>
                            <p>예매문의</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<br><br>
<div>
</div>

<div class="main">
	<div id="page-inner">  

		<div align="center" style="height:80%;">
			<table class="table table-striped table-bordered table-hover" id="dataTables-example">
				<tr>
					<th>번호</th>
					<th>글제목</th>
					<th>아이디</th>
					<th>작성일</th>
					<th>조회수</th>
					<th>답변</th>
				</tr>
				<c:choose>
					<c:when test="${list == null }">
						<tr>
							<td colspan="5" align="center">
								<span style="font-weight: bold;">작성한 글이 없습니다.</span>
							</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="dto" items="${list }">
							<tr>
								<td>${dto.no }</td>
								<td>
									<a href="${pageContext.request.contextPath }/cat6/cat61/content?no=${dto.no }">${dto.resvinquire_title }</a>
								</td>
								<td>${dto.user_id }</td>
								<td>${dto.resvinquire_date }</td>
								<td>${dto.resvinquire_hit }</td>
								<td>${dto.resvinquire_comment != null ? 'O' : 'X' }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
			<form action="${pageContext.request.contextPath }/cat6/cat61/list" method="get" onsubmit="return check(this)" >
				<span style="float: left;">
					<select name="type">
						<option value="no" ${param.type == 'no' ? 'selected' : '' }>글번호로 검색</option>
						<option value="resvinquire_title" ${param.type == 'resvinquire_title' or empty param.type ? 'selected' : '' }>제목으로 검색</option>
						<option value="user_id" ${param.type == 'user_id' ? 'selected' : '' }>아이디로 검색</option>
						<option value="resvinquire_content" ${param.type == 'resvinquire_content' ? 'selected' : '' }>내용으로 검색</option>
					</select>
					<input type="text" name="word" placeholder="검색어를 입력하세요" value="${param.word }" autocomplete="off">
					<input class="btn" type="submit"  value="검색">
					<input type="button" value="전체목록" onclick="location.href='${pageContext.request.contextPath }/cat6/cat61/list'">
				</span>
			</form>		
			<c:if test="${login != null }">
				<div class="btnBox">
					<button onclick="document.location.href='${pageContext.request.contextPath }/cat6/cat61/writeform'">글쓰기</button>
				</div>
			</c:if>
	
			<div align="center">
				<c:if test="${paging.prev }">
					<a href="${pageContext.request.contextPath }/cat6/cat61/list?page=${paging.begin - 1}&type=${param.type}&word=${param.word}">[이전]</a>
				</c:if>
				<c:forEach var="i" begin="${paging.begin }" end="${paging.end }" step="1">
					<c:choose>
						<c:when test="${i == paging.page }">
							<strong>[${i}]</strong>
						</c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath }/cat6/cat61/list?page=${i}&type=${param.type}&word=${param.word}">[${i }]</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.next }">
					<a href="${pageContext.request.contextPath }/cat6/cat61/list?page=${paging.end + 1}&type=${param.type}&word=${param.word}">[다음]</a>
				</c:if>
			</div>
		</div>	
	</div>
</div>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>		



































