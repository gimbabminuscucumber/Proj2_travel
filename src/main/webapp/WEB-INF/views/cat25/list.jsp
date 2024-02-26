<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>> 
<style type="text/css">
        .hidden {
            display: none;
        }
        .filterBox {
            margin: 20px;
        }
</style>

<div class="main_image">
     <a href="${pageContext.request.contextPath }/cat25/list"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px">
</a>
    <h1 class="main_image_text" style="font-size:30px">실시간운항현황</h1>
</div>
<br>
<div class="main"> 

	<h2 align="center"> </h2>
<%-- 	<c:set var="i" value="0" />
	<c:set var="j" value="6" /> --%>
	
	<div class="filterBox" align="center" >
	<label><input  class="btn" style="background-color: #69d;" type="button" name="filter" id="all" value="전체보기"></label>
		 <br>
		<c:forEach var="vo" items="${port}">
            	 <%-- <c:if test="${i%j == 0 }">
                <tr>
                </c:if> --%>
  <label><input class="btn" type="button" name="filter" value="${vo.port_name }" id="${vo.port_name }" ></label>
                 <%--  <c:if test="${i%j == j-1 }">
                </tr>
                 </c:if>
                <c:set var="i" value="${i+1 }" />--%>
            </c:forEach> 
            </div>
        <hr>
      
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
	<thead>
		<tr>
			<th class="center">출발지</th>
			<th class="center">목적지</th>
			<th class="center">출발시각</th>
			<th class="center">변경</th>
			<th class="center">입출항</th>
			<th class="center">선박</th>
			<th class="center">현황</th>
			<th class="center">사유</th>
		</tr>
		</thead>
		
		<c:choose>
				<c:when test="${list == null }">
					<tbody id="tbody">
					<tr>
						<td colspan="8" align="center">
							<span style="font-weight: bold;">데이터가 없습니다.</span>
						</td>
					</tr>
					</tbody>
				</c:when>
				<c:otherwise>
					<c:forEach var="vo" items="${list }" >
					<tbody id="tbody">
						<tr align="center">
							<TD class="center">${vo.PORT_NAME1 }</TD>
				 			<TD class="center">${vo.PORT_NAME2 }</TD>
							<TD class="center">${vo.TIMETABLE_DTIME }</TD>
							<TD class="center">${vo.STATUSINFO_DELAYTIME }</TD>
							<TD class="center">${vo.STATUSINFO_DECLARATION }</TD>
							<TD class="center">${vo.SHIP_NAME }</TD>
							<TD class="center">${vo.SHIPSTATUS_STATUS }</TD>
							<TD class="center">${vo.STATUSINFO_REASON }</TD> 
						</tr>
						</tbody>
					</c:forEach>
				</c:otherwise>
			</c:choose>
	</table>
	</div>

<script type="text/javascript">
	const filterBox = document.querySelector(".filterBox");
	const boxList = filterBox.querySelectorAll("input[type='button']");
	const trList = document.querySelectorAll("#tbody > tr");
/* 	const tdList = document.querySelectorAll("#tbody > tr > td"); */
	
	const clickHandler = (event) => {
		console.log(event.type);		// 어떤 이벤트 타입인가
		console.log(event.button);		// 어떤 버튼으로 클릭 되었는가
		console.log(event.target.id);	// 무엇을 클릭 했는가
		
		
		const checkId = event.target.id;
		
		/* const typped = document.getElementById("port_name").value;
		alert(typped); */
		
		if(checkId == 'all'){
			trList.forEach(tr => { tr.className = ''; });
			return;
		}
		
		 trList.forEach( tr => {
			const trPort = tr.children[0].innerText;
			const flag = trPort === checkId;
			
			console.log(flag);
			
			tr.className = flag ? ' ' : 'hidden' ;
			});
		 
	};
	
	boxList.forEach(button => button.onclick = clickHandler);
</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>