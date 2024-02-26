<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/cat1/cat12/update">
<table border="1">
	<tr>
		<td>승선자명</td>
		<td>성별</td>
		<td>생년월일</td>
		<td>연락처</td>
		<td>외국인</td>
		<td>할인종류</td>
	</tr>
	<tr>
		<td><input type="text" name="pob_name" value="${pvo.pob_name }">
		<td><input type="text" name="pob_gender" value="${pvo.pob_gender }">
		<td><input type="text" name="pob_birth" value="${pvo.pob_birth }">
		<td><input type="text" name="pob_tel" value="${pvo.pob_tel }">
		<td><input type="text" name="pob_foreign" value="${pvo.pob_foreign }">
		<td><input type="text" name="sale_kind" value="${sale_kind }">
		<input type="hidden" name="resv_name" value="${rvo.resv_name }">
		<input type="hidden" name="resv_gender" value="${rvo.resv_gender }">
		<input type="hidden" name="resv_birth" value="${rvo.resv_birth }">
		<input type="hidden" name="resv_tel" value="${rvo.resv_tel }">
		<input type="hidden" name="resv_no" value="${rvo.no}">
		<input type="hidden" name="no" value="${pob_no}">
		<input type="hidden" name="resvlist_price" value="${resvlist_price }">
		<input type="hidden" name="cnt" value="${cnt}"></td>
	</tr>
	<tr>
		<td><input type="submit" value="수정"></td>
	</tr>
</table>
</form>
</body>
</html>