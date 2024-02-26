<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="button" onclick="location.href='${pageContext.request.contextPath}/'" value="home">
<form action="${pageContext.request.contextPath}/cat1/cat12/list">
<div>
	<table border="1">
		<tr>
			<td colspan="2">대표 예매자 조회</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="resv_name"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="resv_tel"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="text" name="resv_birth" value="예)19980101"></td>
		</tr>
	</table>
	<table border="1">
		<tr>
			<td colspan="2">승선자 조회</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="pob_name"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="pob_tel"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="text" name="pob_birth" value="예)19980101"></td>
		</tr>
	</table border="1">
	<table>
		<tr>
			<td colspan="4">카드번호 조회</td>
		</tr>
		<tr>
			<td>
				<input type="text" name="card_num1">
				<input type="text" name="card_num2">
				<input type="text" name="card_num3">
				<input type="text" name="card_num4">
			</td>
		</tr>
	</table>
	<input type="hidden" name="cnt" value="${count }">
	<input type="hidden" name="resvlist_price" value="${resvlist_price }">
	<input type="submit" value="조회">
</div>
</form>
<div align="center">
	<table border="1">
		<tr>
			<td>이름</td>
			<td>출항일시</td>
			<td>항로</td>
			<td>선박명</td>
			<td>좌석등급</td>
			<td>매수</td>
			<td>수정/반환</td>
			<td>영수증/승선권</td>
		</tr>
		<c:forEach var="map" items="${list }">
		<tr>
			<td>${map.POB_NAME }</td>
			<td>${map.TIMETABLE_DATE }</td>
			<td>${map.PNAME1} - ${map.PNAME2 }</td>
			<td>${map.SHIP_NAME }</td>
			<td>${map.SEAT_GRADE }</td>
			<td>${count }</td>
			<td>
				<input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath}/cat1/cat12/updateform?resv_no=${map.RESV_NO}&pob_no=${map.POBNO}&cnt=${count}&resvlist_price=${resvlist_price }'">
				<input type="button" value="반환" onclick="location.href='${pageContext.request.contextPath}/cat1/cat12/delete?resv_no=${map.RESV_NO}&pob_no=${map.POBNO}&resvlist_no=${map.NO}&cnt=${count }&resvlist_price=${resvlist_price }'">
			</td>
			<td>
				<button onclick="recipe(${map.RESV_NO}, ${resvlist_price})">카드 영수증</button>
				<button onclick="ticket(${map.POBNO})">승선권</button>
			</td>
		</tr>
		</c:forEach>
		<c:if test="${count > 1 }">
			<c:forEach var="map" items="${list1 }">
			<tr>
				<td>${map.POB_NAME }</td>
				<td>${map.TIMETABLE_DATE }</td>
				<td>${map.PNAME1} - ${map.PNAME2 }</td>
				<td>${map.SHIP_NAME }</td>
				<td>${map.SEAT_GRADE }</td>
				<td>${count - 1 }</td>
				<td>
					<input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath}/cat1/cat12/updateform?resv_no=${map.RESV_NO}&pob_no=${map.POBNO}&cnt=${count}'">
					<input type="button" value="반환" onclick="location.href='${pageContext.request.contextPath}/cat1/cat12/delete?resv_no=${map.RESV_NO}&pob_no=${map.POBNO}&resvlist_no=${map.NO}&cnt=${count }'">
				</td>
				<td>
					<button onclick="recipe(${map.RESV_NO}, ${resvlist_price})">카드 영수증</button>
					<button onclick="ticket(${map.POBNO})">승선권</button>
				</td>
			</tr>
			</c:forEach>
		</c:if>
	</table>
</div>
<div>
</div>
</body>
<script type="text/javascript">
	function recipe(v,r){
		window.open("${pageContext.request.contextPath}/cat1/cat12/cardOne?resv_no="+v+"&resvlist_price="+r, "_blank", "scrollbars=yes, top=100, left=500, width=300, height=300");
	}
	
	function ticket(v){
		window.open("${pageContext.request.contextPath}/cat1/cat12/resvticket?pob_no="+v, "_blank", "scrollbars=yes, top=200, left=500, width=300, height=300");
	}
</script>
</html>