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
	.yellow{
		background-color:yellow;
	}
</style>
</head>
<body>
<input type="button" onclick="location.href='${pageContext.request.contextPath}/'" value="home">
<form action="${pageContext.request.contextPath}/cat1/cat11/resvjoin" method="post" name="next2">
	<div id="secondpage">
			<table border="1">
						<tr>
							<td rowspan="2">대표</td>
							<td>승선자명</td>
							<td>성별</td>
							<td>생년월일</td>
							<td>연락처</td>
							<td>외국인</td>
							<td>할인종류</td>
						</tr>
						<tr>
							<td><input type="text" name="resv_name" id="resv_name"></td>
							<td><select name="resv_gender" id="resv_gender">
									<option value="남" selected="selected">남</option>
									<option value="여">여</option>
							</select></td>
							<td><input type="text" name="resv_birth" id="resv_birth"></td>
							<td><input type="text" name="resv_tel" id="resv_tel"></td>
							<td><input type="checkbox" name="resv_foreign" id="resv_foreign"
								value="${checked ? 1 : 2 }"></td>
							<td><select name="resv_sale_no" onchange="rateprice1(this.value)">
									<c:if test="${ticket1 != null }">
										<optgroup label="일반대인">
											<c:forEach var="ts1" items="${sale1 }">
												<option value="${ts1.no }">${ts1.sale_kind }</option>
											</c:forEach>
										</optgroup>
										<optgroup label="도서대인">
											<c:forEach var="ts5" items="${sale5 }">
												<option value="${ts5.no }">${ts5.sale_kind }</option>
											</c:forEach>
										</optgroup>
									</c:if>
							</select></td>
						</tr>
						<tr>
							<td>비상연락망</td>
							<td colspan="6"><input type="text" name="resv_emergtel" id="resv_emergtel" size="50"></td>
						</tr>
						<c:if test="check()">
							<tr>
								<td>주소</td>
								<td><input type="text" name="resv_addr"></td>
							</tr>
						</c:if>
				<c:if test="${p > 0}">
					<c:forEach var="i" begin="1" end="${p-1 }" step="1">
						<tr>
							<td rowspan="2">승선자</td>
							<td>승선자명</td>
							<td>성별</td>
							<td>생년월일</td>
							<td>연락처</td>
							<td>외국인</td>
							<td>할인종류</td>
						</tr>
						<tr>
							<td><input type="text" name="pob_name"></td>
							<td><select name="pob_gender">
									<option value="남" selected="selected">남</option>
									<option value="여">여</option>
							</select></td>
							<td><input type="text" name="pob_birth"></td>
							<td><input type="text" name="pob_tel"></td>
							<td><input type="checkbox" name="pob_foreign"
								value="${checked ? 1 : 2 }"></td>
							<td><select name="sale_no" onchange="rateprice1(this.value)">
									<c:if test="${ticket1 != null }">
										<optgroup label="일반대인">
											<c:forEach var="ts1" items="${sale1 }">
												<option value="${ts1.no }">${ts1.sale_kind }</option>
											</c:forEach>
										</optgroup>
										<optgroup label="도서대인">
											<c:forEach var="ts5" items="${sale5 }">
												<option value="${ts5.no }">${ts5.sale_kind }</option>
											</c:forEach>
										</optgroup>
									</c:if>
							</select></td>
						</tr>
						<tr>
							<td>비상연락망</td>
							<td colspan="6"><input type="text" name="pob_emergtel" size="50"></td>
						</tr>
						<c:if test="check()">
							<tr>
								<td>주소</td>
								<td><input type="text" name="pob_addr"></td>
							</tr>
						</c:if>
					</c:forEach>
				</c:if>
				<c:if test="${s > 0 }">
					<c:forEach var="i" begin="0" end="${s-1 }" step="1">
						<tr>
							<td rowspan="2">승선자</td>
							<td>승선자명</td>
							<td>성별</td>
							<td>생년월일</td>
							<td>연락처</td>
							<td>외국인</td>
							<td>할인종류</td>
						</tr>
						<tr>
							<td><input type="text" name="pob_name"></td>
							<td><select name="pob_gender">
									<option value="남" selected="selected">남</option>
									<option value="여">여</option>
							</select></td>
							<td><input type="text" name="pob_birth"></td>
							<td><input type="text" name="pob_tel"></td>
							<td><input type="checkbox" name="pob_foreign"
								value="${checked ? 1 : 2 }"></td>
							<td><select name="sale_no" onchange="rateprice2(this.value)">
									<c:if test="${ticket2 != null }">
										<optgroup label="일반중고">
											<c:forEach var="ts2" items="${sale2 }">
												<option value="${ts2.no }">${ts2.sale_kind }</option>
											</c:forEach>
										</optgroup>
										<optgroup label="도서중고">
											<c:forEach var="ts6" items="${sale6 }">
												<option value="${ts6.no }">${ts6.sale_kind }</option>
											</c:forEach>
										</optgroup>
									</c:if>
							</select></td>
						</tr>
						<tr>
							<td>비상연락망</td>
							<td colspan="6"><input type="text" name="pob_emergtel" size="50"></td>
						</tr>
						<c:if test="check()">
							<tr>
								<td>주소</td>
								<td><input type="text" name="pob_addr"></td>
							</tr>
						</c:if>
					</c:forEach>
				</c:if>
				<c:if test="${ch > 0 }">
					<c:forEach var="i" begin="0" end="${ch-1 }" step="1">
						<tr>
							<td rowspan="2">승선자</td>
							<td>승선자명</td>
							<td>성별</td>
							<td>생년월일</td>
							<td>연락처</td>
							<td>외국인</td>
							<td>할인종류</td>
						</tr>
						<tr>
							<td><input type="text" name="pob_name"></td>
							<td><select name="pob_gender">
									<option value="남" selected="selected">남</option>
									<option value="여">여</option>
							</select></td>
							<td><input type="text" name="pob_birth"></td>
							<td><input type="text" name="pob_tel"></td>
							<td><input type="checkbox" name="pob_foreign"
								value="${checked ? 1 : 2 }"></td>
							<td><select name="sale_no" onchange="rateprice4(this.value)">
									<c:if test="${ticket3 != null }">
										<optgroup label="일반소아">
											<c:forEach var="ts4" items="${sale4 }">
												<option value="${ts4.no }">${ts4.sale_kind }</option>
											</c:forEach>
										</optgroup>
										<optgroup label="도서소아">
											<c:forEach var="ts8" items="${sale8 }">
												<option value="${ts8.no }">${ts8.sale_kind }</option>
											</c:forEach>
										</optgroup>
									</c:if>
							</select></td>
						</tr>
						<tr>
							<td>비상연락망</td>
							<td colspan="6"><input type="text" name="pob_emergtel" size="50"></td>
						</tr>
						<c:if test="check()">
							<tr>
								<td>주소</td>
								<td><input type="text" name="pob_addr"></td>
							</tr>
						</c:if>
					</c:forEach>
				</c:if>
				<c:if test="${gr > 0 }">
					<c:forEach var="i" begin="0" end="${gr-1 }" step="1">
						<tr>
							<td rowspan="2">승선자</td>
							<td>승선자명</td>
							<td>성별</td>
							<td>생년월일</td>
							<td>연락처</td>
							<td>외국인</td>
							<td>할인종류</td>
						</tr>
						<tr>
							<td><input type="text" name="pob_name"></td>
							<td><select name="pob_gender">
									<option value="남" selected="selected">남</option>
									<option value="여">여</option>
							</select></td>
							<td><input type="text" name="pob_birth"></td>
							<td><input type="text" name="pob_tel"></td>
							<td><input type="checkbox" name="pob_foreign"
								value="${checked ? 1 : 2 }"></td>
							<td><select name="sale_no" onchange="rateprice3(this.value)">
									<c:if test="${ticket4 != null }">
										<optgroup label="일반경로">
											<c:forEach var="ts3" items="${sale3 }">
												<option value="${ts3.no }">${ts3.sale_kind }</option>
											</c:forEach>
										</optgroup>
										<optgroup label="도서경로">
											<c:forEach var="ts7" items="${sale7 }">
												<option value="${ts7.no }">${ts7.sale_kind }</option>
											</c:forEach>
										</optgroup>
									</c:if>
							</select></td>
						</tr>
						<tr>
							<td>비상연락망</td>
							<td colspan="6"><input type="text" name="pob_emergtel" size="50"></td>
						</tr>
						<c:if test="check()">
							<tr>
								<td>주소</td>
								<td><input type="text" name="pob_addr"></td>
							</tr>
						</c:if>
					</c:forEach>
				</c:if>
				<c:if test="${b > 0 }">
					<c:forEach var="i" begin="0" end="${b-1 }" step="1">
						<tr>
							<td rowspan="2">승선자</td>
							<td>승선자명</td>
							<td>성별</td>
							<td>생년월일</td>
							<td>연락처</td>
							<td>외국인</td>
							<td>할인종류</td>
						</tr>
						<tr>
							<td><input type="text" name="pob_name"></td>
							<td><select name="pob_gender">
									<option value="남" selected="selected">남</option>
									<option value="여">여</option>
							</select></td>
							<td><input type="text" name="pob_birth"></td>
							<td><input type="text" name="pob_tel"></td>
							<td><input type="checkbox" name="pob_foreign"
								value="${checked ? 1 : 2 }"></td>
							<td><select name="sale_no">
									<c:if test="${ticket5 != null }">
										<optgroup label="유아">
											<c:forEach var="ts9" items="${sale9 }">
												<option value="${ts9.no }">${ts9.sale_kind }</option>
											</c:forEach>
										</optgroup>
									</c:if>
							</select></td>
						</tr>	
						<tr>
							<td>비상연락망</td>
							<td colspan="6"><input type="text" name="pob_emergtel" size="50"></td>
						</tr>
						<c:if test="check()">
							<tr>
								<td>주소</td>
								<td><input type="text" name="pob_addr"></td>
							</tr>
						</c:if>
					</c:forEach>
				</c:if>
				<tr>
					<td><input type="submit" value="결제하기"></td>
				</tr>
			</table><!-- onclick="send()"-->
	<c:if test="${carlist != null }">
		<div>
			<table>
				<tr>
				<c:forEach var="carvo" items="${carlist }">
				<tr>
					<td>차종</td>
					<td>운임료</td>
					<td>선적료</td>
					<td>하역료</td>
				</tr>
				<tr>
					<td><input type="button" onclick="carprice(${carvo.car_tvr}, ${carvo.no })" value="${carvo.car_name }"></td>
					<td>${carvo.car_tvr }</td>
					<td>${carvo.car_shcharge }</td>
					<td>${carvo.car_lacharge }</td>
				</tr>
				</c:forEach>
				</tr>
			</table>	
		</div>
	</c:if>		
			<c:forEach var="i" begin="0" end="${fn:length(ship_no) - 1 }" step="1">
 				<input type="hidden" name="ship_no" value="${ship_no[i] }">
			</c:forEach>
			<c:forEach var="i" begin="0" end="${fn:length(seat_no) - 1}" step="1">
				<input type="hidden" name="seat_no" value="${seat_no[i] }">
			</c:forEach>
			<c:forEach var="i" begin="0" end="${fn:length(timetable_no) - 1}" step="1">
				<input type="hidden" name="timetable_no" value="${timetable_no[i] }">
			</c:forEach>
			<input type="hidden" name="sale_no1" value="1">
			<input type="hidden" name="sale_no2" value="0">
			<input type="hidden" name="sale_no3" value="0">
			<input type="hidden" name="sale_no4" value="0">
<!-- 			<input type="hidden" name="sale_no5" value="0">
			<input type="hidden" name="sale_no6" value="0">
			<input type="hidden" name="sale_no7" value="0">
			<input type="hidden" name="sale_no8" value="0"> -->
			<input type="hidden" name="car_price" value="0">
			<input type="hidden" name="resvlist_price" value="${resvlist_price }">
			<input type="hidden" name="p" value="${p }">
			<input type="hidden" name="s" value="${s }">
			<input type="hidden" name="ch" value="${ch }">
			<input type="hidden" name="gr" value="${gr }">
			<input type="hidden" name="b" value="${b }">
			<input type="hidden" name="c" value="${c }">
			<input type="hidden" name="seat_person" value="${seat_person }">
			<input type="hidden" name="seat_student" value="${seat_student }">
			<input type="hidden" name="seat_child" value="${seat_child }">
			<input type="hidden" name="seat_grand" value="${seat_grand }">
			
	</div>
</form>
<script type="text/javascript">
	
	var dd = document.getElementById("secondpage")
	var count = 0;
	
	function check(){
		const sale = document.querySelectorAll("select");
		if(sale.value.indexOf('도서') == -1){
			return false
		}
		return true
	}
	
	function rateprice1(sale_no){
		document.getElementsByName("sale_no1")[0].value = sale_no;
		console.log(document.getElementsByName("sale_no1")[0].value);
		console.log(sale_no);
		if(!document.getElementsByName("sale_no")[0]){
			dd.innerHTML += '<input type="hidden" name="sale_no" value="' + sale_no + '">'; 
		}
	}
	function rateprice5(sale_no){
		console.log(sale_no);
		document.getElementsByName("sale_no5")[0].value = sale_no;
		console.log(document.getElementsByName("sale_no5")[0].value);
	}

	function rateprice2(sale_no){
		console.log(sale_no);
		document.getElementsByName("sale_no2")[0].value = sale_no;
		console.log(document.getElementsByName("sale_no2")[0].value);
	}

	function rateprice6(sale_no){
		console.log(sale_no);
		document.getElementsByName("sale_no6")[0].value = sale_no;
		console.log(document.getElementsByName("sale_no6")[0].value);
	}
	
	function rateprice3(sale_no){
		console.log(sale_no);
		document.getElementsByName("sale_no3")[0].value = sale_no;
		console.log(document.getElementsByName("sale_no3")[0].value);
	}

	function rateprice7(sale_no){
		console.log(sale_no);
		document.getElementsByName("sale_no7")[0].value = sale_no;
		console.log(document.getElementsByName("sale_no7")[0].value);
	}
	
	function rateprice4(sale_no){
		console.log(sale_no);
		document.getElementsByName("sale_no4")[0].value = sale_no;
		console.log(document.getElementsByName("sale_no4")[0].value);
	}

	function rateprice8(sale_no){
		console.log(sale_no);
		document.getElementsByName("sale_no8")[0].value = sale_no;
		console.log(document.getElementsByName("sale_no8")[0].value);
	}
	
	function carprice(cartvr, carno){
		count += 1;
		if(count == 8){
			alert("차량을 모두 선택하셨습니다.")
			document.next2.resv_name.focus();
			return;
		}
		document.getElementsByName("car_price")[0].value += Number(cartvr);
	}
</script>
</body>
</html>