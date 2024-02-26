<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>

<div class="main_image">
     <a href="${pageContext.request.contextPath }/cat24/insertForm"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px">
</a>
    <h1 class="main_image_text" style="font-size:30px">시간표/요금조회</h1>

</div>
<br>
<div class="main"> 
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
	<thead>
		<tr>
			<th class="center">선박명</th>
			<th class="center">출발시각</th>
			<th class="center">소요시각</th>
			<th class="center">등급</th>
			<th class="center">대인</th>
			<th class="center">중고</th>
			<th class="center">경로</th>
			<th class="center">소아</th>
			<th class="center">출발항</th>
			<th class="center">도착항</th>
		</tr>
		</thead>
		<tbody>
		<c:choose>
				<c:when test="${list == null }">
					<tr>
						<td colspan="10" class="center">
							<span style="font-weight: bold;">데이터가 없습니다.</span>
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="vo" items="${list }">
						<tr>
							<TD class="center">${vo.SHIP_NAME }</TD>
				 			<TD class="center">${vo.TIMETABLE_DTIME }</TD>
							<TD class="center">${vo.TIMETABLE_LTIME }</TD>
							<TD class="center">
							${vo.SEAT_GRADE }
							</TD>
							<TD class="center">
							<fmt:formatNumber value="${vo.SEAT_PERSON }" pattern="#,###"/>
							</TD>
							<TD class="center">
							<fmt:formatNumber value="${vo.SEAT_STUDENT }" pattern="#,###"/> 
							</TD>
							<TD class="center">
							<fmt:formatNumber value="${vo.SEAT_GRAND }" pattern="#,###"/> 
							</TD>
							<TD class="center">
							<fmt:formatNumber value="${vo.SEAT_CHILD }" pattern="#,###"/> 
							</TD>  
							<TD class="center">${vo.PORT_NAME1 }</TD>  
							<TD class="center">${vo.PORT_NAME2 }</TD>  
							
				<%-- 			<td >${vo.ship_name }</td>
							<td >${vo.timetable_dtime }</td>
							<td >${vo.timetable_ltime }</td>
							<td >${vo.seat_grade }</td>
							<td >${vo.seat_person }</td>
							<td >${vo.seat_student }</td>
							<td >${vo.seat_grand }</td>
							<td >${vo.seat_child }</td> --%>
							
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</tbody>
	</table>
	<input class="btn" type="button" value="이전" onclick="history.back()" >
	</div>
	
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>











