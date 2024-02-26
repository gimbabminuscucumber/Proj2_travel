<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@include file = "/WEB-INF/views/layout/header.jsp" %>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>

<div class="main_image">
     <a href="${pageContext.request.contextPath}/cat36/list?mngbrd_ctgrno=36"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px">
</a>
    <h1 class="main_image_text" style="font-size:30px">섬여행공모전</h1>

</div>
<br>
<div class="main">

	<form action="${pageContext.request.contextPath }/cat36/update" method="post" name = "update" >
	<input type="hidden" name="no" value="${vo.no }">
		
<table class="table table-striped table-bordered table-hover" id="dataTables-example">
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
		<input class="btn" type="button" value="수정" onclick="javascript:checkUpdate()">
		<input class="btn" type="button" value="취소" onclick="history.back()" >
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