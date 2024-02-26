<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.hidden{
	display:none;
}
</style>
</head>
<body>
<input type="button" onclick="location.href='${pageContext.request.contextPath}/'" value="home">
<form action="${pageContext.request.contextPath }/cat1/cat12/insert">
<div>
	<table border="1">
		<tr>
			<td><select name="card_kind">
				<option value="1">일반</option>
				<option value="2">법인</option>
			</select></td>
			
			<td colspan="4">카드비밀번호<input type="text" name="card_num1" size="4">
			<input type="text" name="card_num2" size="4">
			<input type="text" name="card_num3" size="4">
			<input type="password" name="card_num4" size="4"></td>
		</tr>
		
		<tr>
			<td colspan="3">앞2자리
			<input type="password" name="card_password" size="2">
			 - * * </td>
			<td colspan="2">생년월일
			<input type="text" name="card_birth"></td>
		</tr>
		
		<tr>
			<td colspan="2">유효기간</td>
			<td colspan="3">일 <input type="text" name="card_expdated" size="2">
			월 <input type="text" name="card_expdatem" size="2">
			년 <input type="text" name="card_expdatey" size="4"></td>
		</tr>
		<tr>
			<td>
				<fieldset>
					<label>일반<input type="radio" name="card_installment" value="1"></label>
					<label>할부<input type="radio" name="card_installment" value="2" onclick="date()"></label>
				</fieldset>
			</td>
		</tr>
		<tr id="hide" class="hidden">
			<td colspan="2">할부기간</td>
			<td colspan="3"><input type="text" name="card_instdate"></td>
		</tr>
		<tr>
			<td colspan="5"><input type="submit" value="${resvlist_price }원 결제">
			<input type="reset" value="이전 단계" onclick="history.back()"></td>
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
<script type="text/javascript">
	function date(){
		var hid = document.getElementById("hide").className='';
	}
</script>
</html>