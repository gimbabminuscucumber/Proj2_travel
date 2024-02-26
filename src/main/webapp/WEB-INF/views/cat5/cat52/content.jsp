<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	
	table {
		width: 800px;
		border-spacing: 0px;
	} 

	th {
		width: 15%;
		text-align: center;
		background-color: #EAEAEA;
	}
	
	.topLine{
		border-top: 2px solid #172C51;	
	}
	
	.btmLine {
		border-bottom: 1px solid #172C51;
	}
	
</style>
<script>
	
	function deleteAction() {
		var check = confirm("삭제 하시겠습니까?");
		
		if(!check){
			return;
		}
		
		location.href = '${pageContext.request.contextPath }/cat52/delete?no=${vo.NO}';
	}
	
</script>
<%@include file="/WEB-INF/views/layout/header.jsp"%>

<!-- 상단 카테고리 이름 들어간 박스-->
<section class="breadcrumb breadcrumb_bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb_iner">
                    <div class="breadcrumb_iner_item text-center">
                        <h2>섬여행 평가하기</h2>
                        <p>나만의 섬에 대해 평가헤주세요!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 글쓰기 테이블 -->
<div align="center">
	<br><h2>섬여행 평가하기</h2><br>
	<table class="topLine">
		<tr class="btmLine">
			<th width="20%">제목</th>
				<td colspan="3">${vo.REVIEW_TITLE }</td>
		</tr>
		<tr class="btmLine">		
			<th>작성자</th>
				<td colspan="3">${vo.USER_NAME }</td>
		</tr>
		<tr class="btmLine">
			<th width="15%" rowspan="6">섬이름</th>
				<td rowspan="6" width="35%">${vo.ISLAND_NAME}</td>
		</tr>
		<tr class="btmLine">
			<th width="15%">자연환경</th>
				<td>
					<c:if test="${vo.REVIEW_ENVIRON eq '1'}"><c:out value="★☆☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_ENVIRON eq '2'}"><c:out value="★★☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_ENVIRON eq '3'}"><c:out value="★★★☆☆"/></c:if>
					<c:if test="${vo.REVIEW_ENVIRON eq '4'}"><c:out value="★★★★☆"/></c:if>
					<c:if test="${vo.REVIEW_ENVIRON eq '5'}"><c:out value="★★★★★"/></c:if>
				</td>
		</tr>
		<tr class="btmLine">
			<th>민박인심</th>
				<td>
					<c:if test="${vo.REVIEW_LODGE eq '1'}"><c:out value="★☆☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_LODGE eq '2'}"><c:out value="★★☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_LODGE eq '3'}"><c:out value="★★★☆☆"/></c:if>
					<c:if test="${vo.REVIEW_LODGE eq '4'}"><c:out value="★★★★☆"/></c:if>
					<c:if test="${vo.REVIEW_LODGE eq '5'}"><c:out value="★★★★★"/></c:if>
				</td>
		</tr>
		<tr class="btmLine">
			<th>급수시설</th>
				<td>
					<c:if test="${vo.REVIEW_WATER eq '1'}"><c:out value="★☆☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_WATER eq '2'}"><c:out value="★★☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_WATER eq '3'}"><c:out value="★★★☆☆"/></c:if>
					<c:if test="${vo.REVIEW_WATER eq '4'}"><c:out value="★★★★☆"/></c:if>
					<c:if test="${vo.REVIEW_WATER eq '5'}"><c:out value="★★★★★"/></c:if>
				</td>
		</tr>	
		<tr class="btmLine">
			<th>섬내교통</th>
				<td>
					<c:if test="${vo.REVIEW_TRAFFIC eq '1'}"><c:out value="★☆☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_TRAFFIC eq '2'}"><c:out value="★★☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_TRAFFIC eq '3'}"><c:out value="★★★☆☆"/></c:if>
					<c:if test="${vo.REVIEW_TRAFFIC eq '4'}"><c:out value="★★★★☆"/></c:if>
					<c:if test="${vo.REVIEW_TRAFFIC eq '5'}"><c:out value="★★★★★"/></c:if>
				</td>
		</tr>	
		<tr class="btmLine">
			<th>생필품구입</th>
				<td>
					<c:if test="${vo.REVIEW_STUFF eq '1'}"><c:out value="★☆☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_STUFF eq '2'}"><c:out value="★★☆☆☆"/></c:if>
					<c:if test="${vo.REVIEW_STUFF eq '3'}"><c:out value="★★★☆☆"/></c:if>
					<c:if test="${vo.REVIEW_STUFF eq '4'}"><c:out value="★★★★☆"/></c:if>
					<c:if test="${vo.REVIEW_STUFF eq '5'}"><c:out value="★★★★★"/></c:if>
				</td>
		</tr>	
		<tr class="btmLine">
			<th height="400px">내용</th>
				<td colspan="3" >${vo.REVIEW_CONTENT }</td>
		</tr>
	</table>
	<table>
		<tr><td>답변</td></tr>
		<tr id="replycomm">
			
		</tr>
	</table>
		<!-- 마이바티스에서 reuslt 타입을 맵으로 받는 키값 데이터들은 대문자로 표기 -->
		<!-- - 키값이 대문자로 세팅되기 떄문에 불러올떄도 똑같은 대문자로 해서 불러와야됨 -->
		
	
	<br>
	<div class="btnBox">
		<c:if test="${login == vo.NO }">
			<input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath }/cat52/updateform?no=${vo.NO}'">
			<input type="button" value="삭제" onclick="deleteAction()">
		</c:if>
	
		<c:if test="${!empty login }">
			<input type="text" name="comm_comment">
			<input type="button" value="답변쓰기" onclick="repl()">
		</c:if>
		
		<input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath }/cat52/list'">
		<input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath }/cat52/updateform?no=${vo.NO }'">
		<input type="button" value="삭제" onclick="deleteAction()">
	
	</div>
</div>
<br>

<script>
	function repl(){
		console.log("실행");
		var url="${pageContext.request.contextPath }/cat52/replywrite";
		var comm = document.getElementsByName("comm_comment")[0].value;
		var param = "comm_comment=" + encodeURIComponent(comm);
		sendRequest(url, param, replcheck, "POST");
	}
	function replcheck(){
		var data = xhr.responseText;
		var replycomm = document.getElementById("replycomm");
		if(data == ''){
			replycomm.innerHTML = '';
		}else {
			replycomm.innerText += data;
			var newTd = document.createElement("td");
			var newTr = document.createElement("tr");
			newTr.appendChild(newTd);
		}
		
	}
</script>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>
