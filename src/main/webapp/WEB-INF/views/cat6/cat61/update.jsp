<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function checkWrite() {
		if(document.write.resvinquire_title.value == ""){
			alert("제목을 입력하십시오!");
		}else if(document.write.resvinquire_content.value == ""){
			alert("내용을 입력하십시오!")
		}else{
			document.write.submit();
		}
	}
</script>
<%@include file = "/WEB-INF/views/layout/header.jsp" %>
<div align="center">
	<form action="${pageContext.request.contextPath }/cat6/cat61/update" method="post" name = "write" >
		<input type="hidden" name="no" value="${vo.no }">
		<table class = "boardTable">
			<tr>
				<th width="60">제목</th>
				<td><input type="text" value="${vo.resvinquire_title }" name = "resvinquire_title" size = "53"></td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea rows="15" cols="65" name = "resvinquire_content">${vo.resvinquire_content }</textarea>
				</td>
			</tr>
		</table>
		<div class = "btnBox">
			<input type="button" value="수정" onclick="javascript:checkWrite()">
		</div>
	</form>
</div>
<%@include file = "/WEB-INF/views/layout/footer.jsp" %>