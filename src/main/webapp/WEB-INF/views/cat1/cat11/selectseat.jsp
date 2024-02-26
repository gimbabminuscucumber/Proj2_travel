<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="button" onclick="location.href='${pageContext.request.contextPath}/'" value="home">
<form action="${pageContext.request.contextPath }/cat1/cat11/payment">
<div align="center">
	<table border="1">
		<c:forEach var="i" begin="1" end="${seatvo.seat_line }" step="1">
			<tr>
			<c:forEach var="j" begin="1" end="${seatvo.seat_row }" step="1">
				<td><button>${(i * 10) + j}</button></td>
			</c:forEach>
			</tr>
		</c:forEach>
		<tr>
			<td><input type="submit" value="결제"></td>
		</tr>
	</table>
	<c:forEach var="i" begin="1" end="${fn:length(ship_no)}">
		<input type="hidden" name="ship_no" value="${ship_no[i - 1]}">
	</c:forEach>
	<c:forEach var="i" begin="1" end="${fn:length(seat_no)}">
		<input type="hidden" name="seat_no" value="${seat_no[i - 1]}">
	</c:forEach>
	<c:forEach var="i" begin="1" end="${fn:length(timetable_no)}">
		<input type="hidden" name="timetable_no" value="${timetable_no[i - 1]}">
	</c:forEach>
	<c:forEach var="i" begin="1" end="${fn:length(sale_no)}">
		<input type="hidden" name="sale_no" value="${sale_no[i - 1]}">
	</c:forEach>

	<input type="hidden" name="resvlist_price" value="${resvlist_price}">
	
	<input type="hidden" name="resv_name" value="${rvo.resv_name}">
	<input type="hidden" name="resv_birth" value="${rvo.resv_birth}">
	<input type="hidden" name="resv_gender" value="${rvo.resv_gender}">
	<input type="hidden" name="resv_tel" value="${rvo.resv_tel}">
	<input type="hidden" name="resv_sale_no" value="${rvo.sale_no}">
	<input type="hidden" name="resv_emergtel" value="${rvo.resv_emergtel}">
	<input type="hidden" name="resv_foreign" value="${rvo.resv_foreign}">

	<input type="hidden" name="seatvo" value="${seatvo}">
	
	<c:forEach var="i" begin="1" end="${fn:length(pob_name)}">
		<input type="hidden" name="pob_name" value="${pob_name[i - 1]}">
	</c:forEach>
	<c:forEach var="i" begin="1" end="${fn:length(pob_gender)}">
		<input type="hidden" name="pob_gender" value="${pob_gender[i - 1]}">
	</c:forEach>
	<c:forEach var="i" begin="1" end="${fn:length(pob_tel)}">
		<input type="hidden" name="pob_tel" value="${pob_tel[i - 1]}">
	</c:forEach>
	<c:forEach var="i" begin="1" end="${fn:length(pob_birth)}">
		<input type="hidden" name="pob_birth" value="${pob_birth[i - 1]}">
	</c:forEach>
	<c:forEach var="i" begin="1" end="${fn:length(pob_foreign)}">
		<input type="hidden" name="pob_foreign" value="${pob_foreign[i - 1]}">
	</c:forEach>
	<c:forEach var="i" begin="1" end="${fn:length(pob_emergtel)}">
		<input type="hidden" name="pob_emergtel" value="${pob_emergtel[i - 1]}">
	</c:forEach>

</div>
</form>
</body>
</html>