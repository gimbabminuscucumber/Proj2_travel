<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript">
	function checkWrite() {
		if(document.write.islboard_title.value == ""){
			alert("제목을 입력하십시오!");
		}else if(document.write.islboard_content.value == ""){
			alert("내용을 입력하십시오!")
		}else{
			document.write.submit();
		}
	}
</script>
    
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ include file="/WEB-INF/views/layout/header_cat2.jsp" %>


<br>
<div class="main"> 
	<form action="${pageContext.request.contextPath }/board/write" method="post" name = "write" enctype="multipart/form-data">
	
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
		<tr>
			<th class="center">제목</th>
			<td><input type="text" name = "islboard_title" size = "53"></td>
			<th width="120">비밀번호</th>
				<td><input type="password" name="islboard_password"></td>
		</tr>
		
		<tr>
				<tr>
				<th>여행일정</th>
				<td>
				<c:forEach var="vo" items="${dlist }">
				<input type="radio" name="no" value="${vo.no }" checked>${vo.tdate_date }
				</c:forEach>
				</td>
				<th>여행목적</th>
				<td colspan="2">
				<c:forEach var="vo" items="${plist }">
				<input type="radio" name="pno" value="${vo.no }" checked>${vo.tpurpose_purpose }
				</c:forEach>
				</td>
			</tr>
			<tr>
				<tr>
				<th>이용교통수단</th>
				<td>
				<c:forEach var="vo" items="${tlist }">
				<input type="radio" name="tno" value="${vo.no }" checked>${vo.trans_vehicle }
				</c:forEach>
				</td>
				<th>희망숙박시설</th>
				<td colspan="2">
				<c:forEach var="vo" items="${alist }">
				<input type="radio" name="ano" value="${vo.no }" checked>${vo.accom_room }
				</c:forEach>
				</td>
			</tr>
			<tr>
				<th>도우미선택</th>
				<td colspan="3">
				<c:forEach var="vo" items="${list }">
				<input type="radio" name="mno" value="${vo.no }" checked>${vo.manager_name }
				</c:forEach>
				</td>
			</tr>
			<tr>
				<th>출발지역</th>
				<td><input type="text" name="islboard_startregion"></td>
				<th>도착지역</th>
				<td><input type="text" name="islboard_hope"></td>
			</tr>
			<tr>
				<th>여행시기</th>
				<td>
				<c:forEach var="vo" items="${slist }">
				<input type="radio" name="tmno" value="${vo.no }" checked>${vo.tschedule_month }월
				</c:forEach>
				</td>
				<th>동행인원수</th>
				<td><input type="text" name="islboard_follower"></td>
				</tr>
		
		
		<tr>
			<td colspan="4">
				<textarea rows="15" cols="65" name="islboard_content" id="summernote"></textarea>
			</td>
		</tr>
		
		
	</table>
	
	<div class = "btnBox">
		<input class="btn" type="button" value="쓰기" onclick="javascript:checkWrite()">
		<input class="btn" type="button" value="취소" onclick="history.back()" >
	</div>
		
	</form>
</div>


<script type="text/javascript">
	$(document).ready(function() {
	  $('#summernote').summernote();
	});
</script>



<%@ include file="/WEB-INF/views/layout/footer.jsp" %>




-