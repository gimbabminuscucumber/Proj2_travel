<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>> 
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<div class="main_image">
    <h1 class="main_image_text" style="font-size:30px">회원리스트</h1>
</div>
<br>
<div class="main"> 

	<h2 align="center"> </h2>
	
        <hr>
      
	<table class="table table-striped table-bordered table-hover" id="dataTables-example">
	<thead>
		<tr>
			<th class="center">회원등록번호</th>
			<th class="center">회원이름</th>
			<th class="center">회원아이디</th>
			<th class="center">회원생년월일</th>
			<th class="center">회원전화번호</th>
			<th class="center">회원이메일</th>
		</tr>
		</thead>
		
		<c:choose>
				<c:when test="${userlist == null }">
					<tbody id="tbody">
					<tr>
						<td colspan="8" align="center">
							<span style="font-weight: bold;">데이터가 없습니다.</span>
						</td>
					</tr>
					</tbody>
				</c:when>
				<c:otherwise>
					<c:forEach var="vo" items="${userlist }" >
					<tbody id="tbody">
						<tr align="center">
							<TD class="center">${vo.no }</TD>
				 			<TD class="center">${vo.user_name }</TD>
							<TD class="center">${vo.user_id }</TD>
							<fmt:parseDate value="${vo.user_birth }" var="birth" pattern="yyyy-MM-dd"/>
						<td class="center"><fmt:formatDate value="${birth }" pattern="yyyy-MM-dd"/></td>
							<TD class="center">${vo.user_tel }</TD>
							<TD class="center">${vo.user_email }</TD>
						</tr>
						</tbody>
					</c:forEach>
				</c:otherwise>
			</c:choose>
	</table>
	</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>











