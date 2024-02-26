<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       
<script>
	
	function deleteAction() {
		var check = confirm("삭제 하시겠습니까?");
		
		if(!check){
			return;
		}
		
		location.href = '${pageContext.request.contextPath }/board/delete?no=${map.NO}';
	}
	
</script>


<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>


<br>

<section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>고객센터</h2>
                            <p>섬여행 상담실</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<div class="main"> 
	<div id="page-inner">  
		 <div class="row"> 
<form action="${pageContext.request.contextPath }/board/comment?no=${map.NO}" method="post" name = "write">
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
		<tr>
			<th>제목</th>
			<td>${map.ISLBOARD_TITLE }</td> <!-- map에서는 key값을 대문자로 받아 오기 때문에 대문자로 입력해야 오류가 나지 않음 -->
			<th>조회수</th>
			<td>${map.ISLBOARD_HIT }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${map.USER_ID }</td>
			<th>작성일</th>
			
			<fmt:parseDate value="${map.ISLBOARD_DATE }" var="mngDate" pattern="yyyy-MM-dd HH:mm"/>
			<td><fmt:formatDate value="${mngDate }" pattern="yyyy-MM-dd HH:mm"/></td>
		</tr>
		
		<tr>
			<th>여행일정</th>
			<td>${tdate_date }</td>
			<th>이용교통수단</th>
			<td>${trans_vehicle }</td>
		</tr>
		<tr>
			<th>여행목적</th>
			<td>${tpurpose_purpose }</td>
			<th>희망숙박시설</th>
			<td>${accom_room }</td>
		</tr>
		<tr>
			<th>출발지역</th>
			<td>${map.ISLBOARD_STARTREGION }</td>
			<th>도착지역</th>
			<td>${map.ISLBOARD_HOPE }</td>
		</tr>
		<tr>
			<th>여행시기</th>
			<td>${tschedule_month }</td>
			<th>동행인원수</th>
			<td>${map.ISLBOARD_FOLLOWER }</td>
		</tr>
		
		<tr>
			<td colspan="4">
				${map.ISLBOARD_CONTENT }
			</td>
		</tr>
		
	</table>
	
	<div class="btnBox">
		<c:if test="${login == map.USER_NO || status == 0}">
			<input class="btn" type="button" value="수정" onclick="location.href='${pageContext.request.contextPath }/board/updateform?no=${map.NO}'">
			<input class="btn" type="button" value="삭제" onclick="deleteAction()">
		</c:if>
		
		<c:if test="${!empty login }">
			<c:if test="${status == 0 }">
			<input type="button" value="답변하기" onclick="
			fetch('replyform?no=${map.NO}&tdate_no=${map.TDATE_NO }&tpurpose_no=${map.TPURPOSE_NO }&trans_no=${map.TRANS_NO }&accom_no=${map.ACCOM_NO }&tschedule_no=${map.TSCHEDULE_NO }').then(function(response){
			response.text().then(function(text){
				document.querySelector('article').innerHTML = text;
				})
			})
			">
			</c:if>
		</c:if>
		<div align="center">
		<table border="1">
		<c:if test="${map.ISLBOARD_COMMENT != null }">
			<tr>
				<th>답변</th>
			</tr>
			<tr>
				<td>${map.ISLBOARD_COMMENT }</td>
			</tr>
		</c:if>
		</table>
		</div>

		<input class="btn" type="button" value="목록" onclick="location.href='${pageContext.request.contextPath }/cat4/consulting'">
	</div>
	</form>
</div>
<article>

</article>
<script type="text/javascript">
	$(document).ready(function() {
 	 	$('#summernote').summernote();
	});
</script>
</div>
</div>

<%@include file="/WEB-INF/views/layout/footer.jsp"%>
















