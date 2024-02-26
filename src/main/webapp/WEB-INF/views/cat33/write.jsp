<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>
<div class="main_image">
     <a href="${pageContext.request.contextPath}/cat33/list?mngbrd_ctgrno=33"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px">
</a>
    <h1 class="main_image_text" style="font-size:30px">지금그섬에는</h1>

</div>
<br>
<div class="main">

	<form action="${pageContext.request.contextPath }/cat33/write" method="post" name = "write" enctype="multipart/form-data">
	
	<input type="hidden" name="mngbrd_ctgrno" value="33">
	
	<c:if test="${no != null }">
		<input type="hidden" name="no" value="${no }">
	</c:if>
	
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
		<tr>
			<th width="60">제목</th>
			<td><input type="text" name = "mngbrd_title" size = "53"></td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea rows="15" cols="65" name="mngbrd_content" id="summernote"></textarea>
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="file" name = "mngbrd_upload" >
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

<script type="text/javascript">
	
	function checkWrite() {
		if(document.write.mngbrd_title.value == ""){
			alert("제목을 입력하십시오!");
		}else if(document.write.mngbrd_content.value == ""){
			alert("내용을 입력하십시오!")
		}else{
			document.write.submit();
		}
	}
	
</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>




-