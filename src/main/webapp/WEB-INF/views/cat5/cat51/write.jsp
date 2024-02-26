<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div align="center">
	<form action="${pageContext.request.contextPath }/cat51/write" method="post" name = "write" enctype="multipart/form-data">
	
	<input type="hidden" name="mngbrd_ctgrno" value="51">
	
	<c:if test="${no != null }">
		<input type="hidden" name="no" value="${no }">
	</c:if>
	
	<table class = "boardTable">
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
		<input type="button" value="쓰기" onclick="javascript:checkWrite()">
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