<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function checkWrite() {
		if(document.write.review_title.value == ""){
			alert("제목을 입력하십시오!");
			document.write.review_title.focus();		// alert 메세지 확인 눌렀을 떄 현재 페이지로 돌아오게 하는 코드
		}else if(document.write.review_content.value == ""){
			alert("내용을 입력하십시오!")
			document.write.review_content.focus();
		}else{
			document.write.submit(); 	// write가 16행의 name = "write"인거??? 
										// >> "write"라는 name을 가진 Form태그를 "/cat52/update" url로 submit() 해라 ???
		}
	}
</script>
<%@include file = "/WEB-INF/views/layout/header.jsp" %>
<div align="center">
	<form action="${pageContext.request.contextPath }/cat52/update" method="post" name = "write" >
		<input type="hidden" name="no" value="${vo.no }">		<!-- 받아오는 데이터의 result type이 map이 아닌 vo 라서 소문자로 ${vo.no} -->
		<table class = "boardTable">
			<tr>
				<th width="20%">섬이름</th>
					<td>
						<select id="starScore" name="island_name">
					        <option value="">평가하실 섬을 선택하세요</option>
					        
							<optgroup label="인천광역시">
					            <option value="대연평도">대연평도</option>
					            <option value="백령도">백령도</option>
					            <option value="울릉도">울릉도</option>
	           				</optgroup>
							<optgroup label="경상남도">
					            <option value="거제도">거제도</option>
					            <option value="솔섬">솔섬</option>
					            <option value="병풍도">병풍도</option>
	           				</optgroup>				        
					        <optgroup label="전라남도">
					            <option value="약산도">약산도</option>
					            <option value="외연도">외연도</option>
					            <option value="송이도">송이도</option>
	           				</optgroup>
           				</select>
					</td>
			</tr>
			<tr>
				<th>자연환경</th>
					<td>
						<input type="radio" value="${vo.review_environ }" name = "review_environ">★
						<input type="radio" value="${vo.review_environ }" name = "review_environ">★★
						<input type="radio" value="${vo.review_environ }" name = "review_environ">★★★
						<input type="radio" value="${vo.review_environ }" name = "review_environ">★★★★
						<input type="radio" value="${vo.review_environ }" name = "review_environ">★★★★★
					</td>
			</tr>
			<tr>
				<th>민박인심</th>
					<td>
						<input type='radio' value='1' name='review_lodge'>★
						<input type='radio' value='2' name='review_lodge'>★★
						<input type='radio' value='3' name='review_lodge'>★★★
						<input type='radio' value='4' name='review_lodge'>★★★★
						<input type='radio' value='5' name='review_lodge'>★★★★★
					</td>
			</tr>		
			<tr>
				<th>급수시설</th>
					<td>
						<input type='radio' value='1' name='review_water'>★
						<input type='radio' value='2' name='review_water'>★★
						<input type='radio' value='3' name='review_water'>★★★
						<input type='radio' value='4' name='review_water'>★★★★
						<input type='radio' value='5' name='review_water'>★★★★★
					</td>
			</tr>	
			<tr>
				<th>섬내교통</th>
					<td>
						<input type='radio' value='1' name='review_traffic'>★
						<input type='radio' value='2' name='review_traffic'>★★
						<input type='radio' value='3' name='review_traffic'>★★★
						<input type='radio' value='4' name='review_traffic'>★★★★
						<input type='radio' value='5' name='review_traffic'>★★★★★
					</td>
			</tr>	
			<tr>
				<th>생필품구입</th>
					<td>
						<input type='radio' value='1' name='review_stuff'>★
						<input type='radio' value='2' name='review_stuff'>★★
						<input type='radio' value='3' name='review_stuff'>★★★
						<input type='radio' value='4' name='review_stuff'>★★★★
						<input type='radio' value='5' name='review_stuff'>★★★★★
					</td>
			</tr>	
			<tr>
				<th width="60">제목</th>
				<td><input type="text" value="${vo.review_title }" name = "review_title" size = "53"></td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea id="summernote" rows="15" cols="65" name = "review_content">${vo.review_content }</textarea>
				</td>
			</tr>
		</table>
		<div class = "btnBox">
			<input type="button" value="수정" onclick="javascript:checkWrite()">
		</div>
	</form>
</div>
<!-- summersnote 적용 코드 -->
<script type="text/javascript">
	$(document).ready(function() {
 	 	$('#summernote').summernote();
	});
</script>
<%@include file = "/WEB-INF/views/layout/footer.jsp" %>