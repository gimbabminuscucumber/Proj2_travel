<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">
	
</style>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>


<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/summernote/js/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/css/summernote-lite.css">

<title>Insert title here</title>
</head>
<body>
    

    
<script type="text/javascript">
	function checkWrite() {
		if(document.write.islboard_comment.value == ""){
			alert("내용을 입력하십시오!");
		}else{
			document.write.submit();
		}
	}
</script>

<div align="center">
	<form action="${pageContext.request.contextPath }/board/reply?no=${param.no}&tdate_no=${param.tdate_no}&tpurpose_no=${param.tpurpose_no}&trans_no=${param.trans_no}&accom_no=${param.accom_no}&tschedule_no=${param.tschedule_no}" method="post" name="write">
	
	<div>
		<c:if test="${status == 0 }">
			<textarea id="summernote" rows="15" cols="65" name="islboard_comment"></textarea>
		</c:if>
	</div>
	
	
			<input type="submit" value="답변하기" onclick="javascript:checkWrite()">
	
	
	</form>

<script type="text/javascript">
	$(document).ready(function() {
 	 	$('#summernote').summernote();
	});
</script>

</div>
