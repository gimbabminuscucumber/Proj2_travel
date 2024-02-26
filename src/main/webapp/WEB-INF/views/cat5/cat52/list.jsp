<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ include file="/WEB-INF/views/layout/header.jsp" %>					
<c:set var="cpath" value="${pageContext.request.contextPath }"/>	

<!-- 상단 카테고리 이름 들어간 박스-->
<section class="breadcrumb breadcrumb_bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb_iner">
                    <div class="breadcrumb_iner_item text-center">
                        <h2>섬여행 평가하기</h2>
                        <p>나만의 섬에 대해 평가헤주세요!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 베스트5 섬 리스트 -->
<div align="center">
	<br><h2>BEST5</h2><br>
	<table>
		<tr class="btmLine" >
			<th width="50px">순위</th> 		
			<th width="70px">섬이름</th>
			<th width="15%">자연환경</th>		
			<th width="15%">민박인심</th>		
			<th width="15%">급수시설</th>		
			<th width="15%">섬내교통</th>		
			<th width="15%">생필품구입</th>	
			<th width="50px">리뷰</th>		
		</tr>
		<c:choose>	
			<c:when test="${rankList == null }"> 
				<tr class="btmLine" >
					<td colspan="8" align="center">	
						<span style="font-weight: bold;">평가된 내역이 없습니다.</span>
					</td>
				</tr>
			</c:when>	
			<c:otherwise>	
				<c:forEach var="best" items="${rankList }" varStatus="i">	<!-- i 변수 생성 -->
					<tr class="btmLine" >
						<td>${i.count }</td>		<!--베스트5 순서 차례대로 정렬 -->
						<td><a href="${pageContext.request.contextPath }#">${best.island_name}</a></td>	<!-- 섬 정보 페이지로 이동 -->
						<td>
							<c:if test="${best.review_environ == 1}"><c:out value="★☆☆☆☆"/></c:if>
							<c:if test="${best.review_environ == 2}"><c:out value="★★☆☆☆"/></c:if>
							<c:if test="${best.review_environ == 3}"><c:out value="★★★☆☆"/></c:if>
							<c:if test="${best.review_environ == 4}"><c:out value="★★★★☆"/></c:if>
							<c:if test="${best.review_environ == 5}"><c:out value="★★★★★"/></c:if>
						</td>
						<td>
							<c:if test="${best.review_lodge eq '1'}"><c:out value="★☆☆☆☆"/></c:if>
							<c:if test="${best.review_lodge eq '2'}"><c:out value="★★☆☆☆"/></c:if>
							<c:if test="${best.review_lodge eq '3'}"><c:out value="★★★☆☆"/></c:if>
							<c:if test="${best.review_lodge eq '4'}"><c:out value="★★★★☆"/></c:if>
							<c:if test="${best.review_lodge eq '5'}"><c:out value="★★★★★"/></c:if>
						</td>
						<td>
							<c:if test="${best.review_water eq '1'}"><c:out value="★☆☆☆☆"/></c:if>
							<c:if test="${best.review_water eq '2'}"><c:out value="★★☆☆☆"/></c:if>
							<c:if test="${best.review_water eq '3'}"><c:out value="★★★☆☆"/></c:if>
							<c:if test="${best.review_water eq '4'}"><c:out value="★★★★☆"/></c:if>
							<c:if test="${best.review_water eq '5'}"><c:out value="★★★★★"/></c:if>
						</td>
						<td>
							<c:if test="${best.review_traffic eq '1'}"><c:out value="★☆☆☆☆"/></c:if>
							<c:if test="${best.review_traffic eq '2'}"><c:out value="★★☆☆☆"/></c:if>
							<c:if test="${best.review_traffic eq '3'}"><c:out value="★★★☆☆"/></c:if>
							<c:if test="${best.review_traffic eq '4'}"><c:out value="★★★★☆"/></c:if>
							<c:if test="${best.review_traffic eq '5'}"><c:out value="★★★★★"/></c:if>
						</td>
						<td>
							<c:if test="${best.review_stuff eq '1'}"><c:out value="★☆☆☆☆"/></c:if>
							<c:if test="${best.review_stuff eq '2'}"><c:out value="★★☆☆☆"/></c:if>
							<c:if test="${best.review_stuff eq '3'}"><c:out value="★★★☆☆"/></c:if>
							<c:if test="${best.review_stuff eq '4'}"><c:out value="★★★★☆"/></c:if>
							<c:if test="${best.review_stuff eq '5'}"><c:out value="★★★★★"/></c:if>
						</td>	
						<td>${best.review_su }</td>	
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
<br>	
<hr>
<br>	

<!-- 유저의 섬 평가 리스트 -->
<div align="center">
	<br><h2>나의섬 평가</h2><br>
	<table class="brdTable">
		<tr class="brdTr" >
			<th width="50px">번호</th> 
			<th width="70px">섬이름</th>
			<th width="250px">제목</th>
			<th width="80px">작성자</th>
			<th width="80px">작성일</th>
			<th width="80px">조회수</th>
		</tr>
		<c:choose>	
			<c:when test="${list == null }">				 
				<tr class="btmLine" >
					<td colspan="6" align="center">	
						<span style="font-weight: bold;">작성한 글이 없습니다.</span>
					</td>
				</tr>
			</c:when>
			<c:otherwise>	
				<c:forEach var="review" items="${list }">	
					<tr class="btmLine" >	
						<td align="center">${review.no }</td>
						<td align="center">${review.island_name }</td>
						<td><a href="${pageContext.request.contextPath }/cat52/content?no=${review.no }">${review.review_title }</a></td>
						<td align="center">${review.user_name }</td>
						<!-- <td align="center">${review.review_date }</td>  -->
						<fmt:parseDate value="${review.review_date }" var="review_date" pattern="yy-MM-dd"/>  <!--변환 -->
						<td><fmt:formatDate value="${review_date }" pattern="yy-MM-dd"/></td> 
						<td align="center">${review.review_hit }</td>	
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
<br>

<!-- 페이지 이동 -->
<div align="center">
	<div>
		<c:if test="${paging.prev }">						
			<a href="${cpath }/cat52/list?page=${paging.begin - 1}&type=${param.type}&word=${param.word}">[이전]</a>
		</c:if>
	
		<c:forEach var="i" begin="${paging.begin }" end="${paging.end }" step="1">
			<c:choose>
				<c:when test="${i == paging.page }">
					<strong>[${i}]</strong>
				</c:when>
				<c:otherwise>
					<a href="${cpath }/cat52/list?page=${i}&type=${param.type}&word=${param.word}">[${i }]</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	
		<c:if test="${paging.next }">
			<a href="${cpath }/cat52/list?page=${paging.end + 1}&type=${param.type}&word=${param.word}">[다음]</a>	
		</c:if>
	</div>
</div>	
<br>

<!-- 글쓰기 버튼 (로그인 유저만)-->
<c:if test="${!empty login }">	
<div>
	<span style="float:center;"> 
		<button onclick="location.href='${pageContext.request.contextPath }/cat52/writeform'">글쓰기</button>
	</span>
</div>
<br>
</c:if>

<!-- 검색 기능 -->
<form action="${pageContext.request.contextPath }/cat52/list" method="get" onsubmit="return check(this)" >
	<span style="float: center;">
		<select name="type">
			<option value="review_title" ${param.type == 'review_title' or empty param.type ? 'selected' : '' }>제목으로 검색</option>
			<option value="review_content" ${param.type == 'review_content' ? 'selected' : '' }>내용으로 검색</option>
		</select>
		<input type="text" name="word" placeholder="검색어를 입력하세요" value="${param.word}" autocomplete="off">
		<input class="btn" type="submit"  value="검색">
	</span>
</form>		

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>		