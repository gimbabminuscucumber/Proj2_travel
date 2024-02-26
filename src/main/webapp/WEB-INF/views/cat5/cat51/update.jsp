<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@include file = "/WEB-INF/views/layout/header.jsp" %>

<div align="center">
	<form action="${pageContext.request.contextPath }/cat51/update" method="post" name = "update" >
	<input type="hidden" name="no" value="${vo.no }">
		
	<table class = "boardTable">
		<tr>
			<th width="60">제목</th>
			<td><input type="text" value="${vo.mngbrd_title }" name = "mngbrd_title" size = "53"></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<textarea rows="15" cols="65" name = "mngbrd_content" id="summernote">${vo.mngbrd_content }</textarea>
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="file" name = "mngbrd_file" size = "400">
			</td>
		</tr>
		
	</table>
	
	<div class = "btnBox">
		<input type="button" value="수정" onclick="javascript:checkUpdate()">
	</div>

	</form>
</div>


<script type="text/javascript">

	function checkUpdate() {
		if(document.update.mngbrd_title.value == ""){
			alert("제목을 입력하십시오!");
		}else if(document.update.mngbrd_content.value == ""){
			alert("내용을 입력하십시오!")
		}else{
			document.update.submit();
		}
	}
	
</script>

<script type="text/javascript">
	$(document).ready(function() {
	  $('#summernote').summernote();
	});
</script>

<%@include file = "/WEB-INF/views/layout/footer.jsp" %>