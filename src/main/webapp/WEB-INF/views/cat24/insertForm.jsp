<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	window.onload = function() {
	today = new Date();
	console.log("today.toISOString() >>>" + today.toISOString());
	today = today.toISOString().slice(0, 10);
	console.log("today >>>> " + today);
	bir = document.getElementById("input_date");
	bir.value = today;
	
}
	function input(){
	const selectday = document.querySelector("#input_date").value;
	selectday.value = '#input_date';
	console.log(selectday);
	}
	
	function date(no){
		const date = document.getElementById("input_date").value;
		const num = no;
		const url = "${ pageContext.request.contextPath }/cat24/result?timetable_date="+encodeURIComponent(date)+"&port_no2="+no;
		window.location.href=url;
	}
	
</script>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>

<div class="main_image">
     <a href="${pageContext.request.contextPath }/cat24/insertForm"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px">
</a>
    <h1 class="main_image_text" style="font-size:30px">시간표/요금조회</h1>

</div>
<br>
<div class="main"> 
		<h3 class="center">도착항구를 선택해주세요</h3>
		<br>
	 <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	 <thead>
		<tr>
			<th colspan="4" class="center">도착항구목록</th>
		</tr>
		<tr>
		<label for="date">날짜를 선택하세요:
  	<input type="date"
         id="input_date"
         max="2023-12-31"
         min="2023-06-05"
         value="2023-06-15"
         name="date" onchange="input()"
         >
	</label>
	</tr>
	</thead>
	
	
		<c:choose>
				<c:when test="${list == null }">
					<tr>
						<td colspan="3" class="center">
							<span class="center" style="font-weight: bold;">데이터가 없습니다.</span>
						</td>
					</tr>
				</c:when>
				<c:otherwise>
				 	<c:set var="i" value="0" />
					<c:set var="j" value="4" />
					
					<c:forEach var="vo" items="${list }">
					<c:if test="${i%j == 0 }">
	    				<tr>
	    			</c:if>
				<td class="center"><button class="btn" id="no" value="${vo.no }" onclick="date(${vo.no })"> ${vo.port_name } </button> </td>
				  <c:if test="${i%j == j-1 }">
				    </tr>
				    </c:if>
	    			<c:set var="i" value="${i+1 }" />
					</c:forEach>
				</c:otherwise>
			</c:choose>
	</table>
	</div>
	
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>


