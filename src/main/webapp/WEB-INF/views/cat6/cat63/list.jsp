<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	function check(f){
		if(f.type.value == "no"){
			var num_pattern = /^[0-9]{1,20}$/;
			
			if(f.word.value == "" || !num_pattern.test(f.word.value)){
				alert("글번호를 입력하세요");
				return false;
			}
		}else if(f.word.value == ""){
			alert("검색어를 입력하세요");
			return false;
		}
		
		return true;
	}

</script>  
    
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>		<!-- c:set 태그 : 변수명 설정할 떄 사용 -->

<!-- 상단 카테고리 이름 들어간 박스-->
<section class="breadcrumb breadcrumb_bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb_iner">
                    <div class="breadcrumb_iner_item text-center">
                        <h2>고객센터</h2>
                        <p>건의사항</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<div align="center">
<br><br><br>
	<table>
		<tr class="btmLine">
			<th width="50px">번호</th>
			<th width="250px">제목</th>
			<th width="80px">작성자</th>
			<th width="100px">작성일</th>
			<th width="80px">조회수</th>
		</tr>
		<c:choose>
			<c:when test="${list == null }">
				<tr class="btmLine">
					<td colspan="5" align="center">
						<span style="font-weight: bold;">작성한 글이 없습니다.</span>
					</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="suggest" items="${list }">
					<tr class="btmLine">
						<td>${suggest.no }</td>
						<td><a href="${pageContext.request.contextPath }/cat63/content?no=${suggest.no }">${suggest.sugg_title }</a></td>
						<td>${suggest.user_name }</td>
						<td>${suggest.sugg_date }</td>
						<td>${suggest.sugg_hit }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>	
<br>


<div align="center">
	<div>
		<!-- [이전] 설정 -->
		<c:if test="${paging.prev }">
			<a href="${cpath }/cat63/list?page=${paging.begin - 1}&type=${param.type}&word=${param.word}">[이전]</a>
		</c:if>

		<!-- 페이지 넘버 설정 -->
		<c:forEach var="i" begin="${paging.begin }" end="${paging.end }" step="1">
			<c:choose>	
				<c:when test="${i == paging.page }">
					<strong>[${i}]</strong>
				</c:when>	
				<c:otherwise>
					<a href="${cpath }/cat63/list?page=${i}&type=${param.type}&word=${param.word}">[${i }]</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<!-- [다음] 설정 -->
		<c:if test="${paging.next }">
			<a href="${cpath }/cat63/list?page=${paging.end + 1}&type=${param.type}&word=${param.word}">[다음]</a>
		</c:if>
	</div>
</div>	
<br>


<!-- 글쓰기 버튼 -->
<div>
<c:if test="${login != null }">
	<span style="float:center;"> 
		<button onclick="location.href='${pageContext.request.contextPath }/cat63/writeform'">글쓰기</button>
	</span>
</c:if>
</div>
<br>

<!-- 검색 기능 -->
<form action="${pageContext.request.contextPath }/cat63/list" method="get" onsubmit="return check(this)" >
	<span style="float: center;">
		<select name="type">
			<option value="sugg_title" ${param.type == 'sugg_title' or empty param.type ? 'selected' : '' }>제목으로 검색</option>
			<option value="sugg_content" ${param.type == 'sugg_content' ? 'selected' : '' }>내용으로 검색</option>
		</select>
		<input type="text" name="word" placeholder="검색어를 입력하세요" value="${param.word}" autocomplete="off">
		<input class="btn" type="submit"  value="검색">
	</span>
</form>		

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>		