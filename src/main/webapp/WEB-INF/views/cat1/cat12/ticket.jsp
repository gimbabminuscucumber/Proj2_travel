<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h3>승선권</h3>
	<table>
		<tr>
			<td>대표 예매자 성명 : ${vo.resv_name }</td>
			<td>승선자 성명 : ${vo.pob_name }</td>
		</tr>
		<tr>
			<td>생년월일 : ${vo.pob_birth }</td>
			<td>전화번호 : ${vo.pob_tel }</td>
		</tr>
		<tr>
			<td>성별 : ${vo.pob_gender}</td>
			<td>비상연락망 : ${vo.pob_emergtel }</td>
		</tr>
		<tr>
			<td>좌석등급 : ${vo.seat_grade }</td>
			<td>출항일시 : ${vo.timetable_date }</td>
		</tr>
	</table>
</div>
</body>
</html>