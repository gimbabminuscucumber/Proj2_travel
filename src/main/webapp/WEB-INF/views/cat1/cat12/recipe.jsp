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
<div align="center">
	<h3>영수증</h3>
	<table>
		<tr>
			<td>결제자 : ${vo.resv_name }</td>
			<td>생년월일 : ${vo.card_birth }</td>
		</tr>
		<tr>
			<td>카드 종류 : ${vo.card_kind == 1 ? '일반' : '법인' }</td>
			<td>카드 번호 : ${vo.card_num1 } - ${vo.card_num2 } - ${vo.card_num3 } - ****</td>
		</tr>
		<tr>
			<td>할부 유무 : ${vo.card_installment == 1 ? '일반' : '할부' }</td>
			<td>결제 일시 : ${vo.resvlist_paymentdate }</td>
		</tr>
		<tr>
			<td colspan="2">결제 금액 : ${resvlist_price}</td>
		</tr>
	</table>
</div>
</body>
</html>