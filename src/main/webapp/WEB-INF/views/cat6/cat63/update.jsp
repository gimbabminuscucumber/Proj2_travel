<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function checkWrite() {
		if(document.write.sugg_title.value == ""){
			alert("제목을 입력하십시오!");
		}else if(document.write.sugg_content.value == ""){
			alert("내용을 입력하십시오!")
		}else{
			document.write.submit();
		}
	}
</script>
<%@include file = "/WEB-INF/views/layout/header.jsp" %>
<div align="center">
	<form action="${pageContext.request.contextPath }/cat63/update" method="post" name = "write" >
		<input type="hidden" name="no" value="${vo.no }">
		<table class = "boardTable">
			<tr>
				<th width="60">제목</th>
				<td><input type="text" value="${vo.sugg_title }" name = "sugg_title" size = "53"></td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea rows="15" cols="65" name = "sugg_content" id="summernote">${vo.sugg_content }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="file" name = "sugg_file" size = "400">
				</td>
			</tr>
		</table>
		<div class = "btnBox">
			<input type="button" value="수정" onclick="javascript:checkWrite()">
		</div>
	</form>
</div>

<script type="text/javascript">
	$(document).ready(function() {
	  $('#summernote').summernote();
	});
</script>
<%@include file = "/WEB-INF/views/layout/footer.jsp" %>