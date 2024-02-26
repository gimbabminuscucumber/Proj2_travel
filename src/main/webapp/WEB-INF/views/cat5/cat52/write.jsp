<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<script type="text/javascript">
	function checkWrite() {
		if(document.write.island_name.value==""){
			alert("섬을 선택해주세요!")
		}
		else if(document.write.review_environ.value == ""){			// 평가 항목 중 하나가 공란이면
			alert("'자연환경' 별점을 체크 해주세요!");
		}else if(document.write.review_lodge.value == ""){	
			alert("'민박인심' 별점을 체크 해주세요!");
		}else if(document.write.review_water.value == ""){		
			alert("'급수시설' 별점을 체크 해주세요!");
		}else if(document.write.review_traffic.value == ""){	
			alert("'섬내교통' 별점을 체크 해주세요!");
		}else if(document.write.review_stuff.value == ""){		
			alert("'생필품구입' 별점을 체크 해주세요!");
		}else if(document.write.review_title.value == ""){		// 제목이 공란이면
			alert("제목을 입력하십시오!");
		}else if(document.write.review_content.value == ""){	// 내용이 공란이면
			alert("내용을 입력하십시오!")
		}else{											// 공란이 없으면		
			document.write.submit();					// submit() 되면 form 태그의 url 로 넘어간다
		}
	}
</script>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<div align="center">
	<form action="${pageContext.request.contextPath }/cat52/write" method="post" name = "write">
		<table class="boardTable">
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
						<input type='radio' value='1' name='review_environ'>★
						<input type='radio' value='2' name='review_environ'>★★
						<input type='radio' value='3' name='review_environ'>★★★
						<input type='radio' value='4' name='review_environ'>★★★★
						<input type='radio' value='5' name='review_environ'>★★★★★
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
				<td><input type="text" name = "review_title" size = "53"></td>  <!-- controller로 넘어가는 데이터 -->
			</tr>
			<tr>
				<td colspan='2'>
					<textarea id="summernote" rows="15" cols="65" name="review_content"></textarea>
				</td>
			</tr>
		</table>
		<div class = "btnBox">
			<input type="button" value="쓰기" onclick="javascript:checkWrite()">
		</div>
	</form>
</div>

<!-- summersnote 적용 코드 -->
<script type="text/javascript">
	$(document).ready(function() {
 	 	$('#summernote').summernote();
	});
</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
