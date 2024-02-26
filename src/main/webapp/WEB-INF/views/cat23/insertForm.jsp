<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<th colspan="2" class="center">운항경로</th>
		</tr>
		</thead>
		<tbody>
		<c:choose>
				<c:when test="${list == null }">
					<tr>
						<td class="center" colspan="2" align="center">
							<span style="font-weight: bold;">데이터가 없습니다.</span>
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td class="center">${vo.ship_interval }</td>
							<td class="center"><input class="btn" type="button" value="검색" onclick="location.href='${ pageContext.request.contextPath }/cat23/result?ship_interval=${vo.ship_interval }'"> </td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</tbody>
	</table>
	</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>


