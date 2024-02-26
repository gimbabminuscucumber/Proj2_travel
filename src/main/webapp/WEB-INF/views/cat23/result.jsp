<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>

<div class="main_image">
     <a href="${pageContext.request.contextPath }/cat23/insertForm"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px">
</a>
    <h1 class="main_image_text" style="font-size:30px">차량운임조회</h1>

</div>
<br>
<div class="main"> 
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
		<thead>
		<tr>
			<th class="center">선박명</th>
			<th class="center">차량종류</th>
			<th class="center">가격</th>
			<th class="center">운항경로</th>
		</tr>
		</thead>
		<tbody>
		<c:choose>
				<c:when test="${list == null }">
					<tr>
						<td colspan="4" class="center">
							<span  style="font-weight: bold; align-content: center;">데이터가 없습니다.</span>
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td class="center">${vo.SHIP_NAME }</td>
							<td class="center">${vo.CAR_NAME }</td>
							<td class="center">
							 <fmt:formatNumber value="${vo.CAR_TVR }" pattern="#,###"/> 
							</td >
							<td class="center">${vo.SHIP_INTERVAL }</td>
							
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</tbody>
	</table>
	<input class="btn" type="button" value="이전" onclick="history.back()" >
	</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>











