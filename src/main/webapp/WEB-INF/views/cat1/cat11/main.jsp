<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/httpRequest.js"></script>
<style>
	#seat:hover #tooltipseat{
		visibility: visible;
	}
	#ship:hover #tooltipship{
		visibility: visible;
	}

	.hidden{
		display:none;
	}

</style>
</head>
<body>
<input type="button" onclick="location.href='${pageContext.request.contextPath}/'" value="home">
<form action="${pageContext.request.contextPath}/cat1/cat11/selectperson" method="post" name="firstpage">
<div id="first">
	<div id="rounttrip" style="float:left; width:20%; height:20%;">
		<fieldset>
			<label>왕복<input type="radio" name="r" id="rt1" value="1" onclick="rtcheck1()"></label>
			<label>편도<input type="radio" name="r" id="rt2" value="2" onclick="rtcheck2()" checked="checked"></label>
		</fieldset>
		<div align="center" id="dateAll" class="hidden" style="height:50%;">
    	 	<input type="date"
     	    	id="date"
      	  		max="2023-12-31"
      	   		min="2023-06-05"
      	   		value="2023-06-15"
      			onchange="datechange()">
     	 	<input type="date"
         		id="date2"
         		max="2023-12-31"
         		min="2023-06-05"
         		value="2023-06-15"
         		onchange="date2change()"
         		class="hidden">
		</div>
		<div id="personcar" style="height:50%;">
		<table>
			<tr> 
				<td>
					대인<select id="person" onchange="dain(this.value)">
						<option value="0" selected>0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
					</select>
				</td>
				<td>
					중고<select id="student" onchange="joongo(this.value)">
						<option value="0" selected>0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
					</select>
				</td>
				<td>
					소아<select id="child" onchange="soa(this.value)">
						<option value="0" selected>0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
					</select>
				</td>
				<td>
					경로<select id="grand" onchange="gyeongro(this.value)">
						<option value="0" selected>0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
					</select>
				</td>
				<td>
					유아<select id="baby" onchange="yua(this.value)">
						<option value="0" selected>0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
					</select>
				</td>
				<td>
					차량<select id="car" onchange="cha(this.value)" class="hidden">
						<option value="0" selected>0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						</select>
					</td>
				</tr>
			</table>
		</div>
	</div>
	
	<div style="float:left; width: 80%; height:20%;">
		<div id="citylist" style="height:30%;">
			<table id="cnoP">
				<c:forEach var="list" items="${citylist }">
					<c:if test="${i%12==0 }">
						<tr>
					</c:if>
							<td>
								<a><input type="button" size="5" onclick="cityportcheck(${list.no })" value="${list.city_name }"></a>
								<input type="hidden" class="cno" value="${list.no }" id="cno">
								<c:set var="i" value="${i+1 }"/>
							</td>
					<c:if test="${i%12==0}">
						</tr>
					</c:if>	
				</c:forEach>
			</table>
		</div>
		<div style="height:35%;">
			도착지 기준
			<table>
				<tr id="cityport">
				
				<tr>
			</table>
		</div>
		<div style="height:35%;">
			항로
			<table>
				<tr id="portlist">
				
				<tr>
			</table>
		</div>
	</div>
	
	<div style="float:left; width:30%; height:50%;">
		<div style="height:30%;">
			가는여정
			<table border="1" id="depinfo1">
			
			</table>
		</div>
		<div style="height:30%;">
			오는여정
			<table border="1" id="depinfo2">
			
			</table>
		</div>
		<div id="countperson" style="height:20%;">
			<table>
				<tr>
					<td>인원</td>
					<td id="percnt">0 명</td>
				</tr>
			</table>
		</div>
		<div id="countcar" style="height:20%;">
			<table>
				<tr>
					<td>차량</td>
					<td id="carcnt">0 대</td>
				</tr>
			</table>
		</div>
	</div>
	
	<div style="float:left; width:70%; height:50%;">
		<div style="height:50%;">
			가는여정
			<table border="1" id="shiplist1">
				
			</table>
		</div>
		<div style="height:50%;">
			오는여정
			<table border="1" id="shiplist2">
				
			</table>
		</div>
	</div>
	<div id="nextpage" style="width:30%; height:30%;">
		<div>
			좌석정보
			<table border="1" id="seatinfo">
				
			</table>
		</div>
		<div>
			선박사정보
			<table border="1" id="tooltipship">
				
			</table>
		</div>
		<input type="button" value="다음 단계" onclick="next1()">
		<input type="reset" value="이전 단계" onclick="history.back()">
	</div>
	
	
</div>
<input type="hidden" id="ship_no1" name="ship_no" value="">
<input type="hidden" id="ship_no2" name="ship_no" value="">
<input type="hidden" id="seat_no1" name="seat_no" value="">
<input type="hidden" id="seat_no2" name="seat_no" value="">
<input type="hidden" id="timetable_no1" name="timetable_no" value="">
<input type="hidden" id="timetable_no2" name="timetable_no" value="">
<input type="hidden" name="seat_person" value="">
<input type="hidden" name="seat_student" value="">
<input type="hidden" name="seat_child" value="">
<input type="hidden" name="seat_grand" value="">
<input type="hidden" name="person" value="">
<input type="hidden" name="student" value="">
<input type="hidden" name="child" value="">
<input type="hidden" name="grand" value="">
<input type="hidden" name="baby" value="">
<input type="hidden" name="car" value="">
<input type="hidden" name="port_name1" value="">
<input type="hidden" name="port_name2" value="">
</form>

</body>

<script type="text/javascript">
	var pname;
	var pname2;
	
	var pno1;
	var pno2;
	var date;
	var date2value;
	
	var shiplist1no;
	var shiplist2no;
	var seatno1;
	var timeno1;
	var seatno2;
	var timeno2;
	
	var personprice = 0;
	var studentprice = 0;
	var childprice = 0;
	var grandprice = 0;
	
	var seatprice = 0;
	var saleprice = 0;
	var carprice = 0;
	
	const carterms = '※ 해당 구간은 차량예약이 가능한 구간입니다.\n';
		+ '- 차량을 함께 예약하실분은 아래 체크박스를 선택해 주십시요.\n';
		+ '- 차량예약 선택시 반드시 차량을 선택해야만 진행이 가능합니다.\n\n';
		+ '※ 차량 선적 및 운항통제(결항) 안내\n';
		+ '>> 차량 선적시 주의사항\n';
		+ '1. 선박관계법령에 의하여 선박에 차량선적 시 안전조치(결박)로 인한 부분적인 자국에 대하여 당사가 책임을 지지 않으니 유념하시기 바랍니다.\n';
		+ '(차량 고정을 위한 벤딩 시 사용되는 와이어(또는 체결고리)는 나일론 재질로 휠에 흠집을 남기지는 않으나 자국이 남는 경우가 발생할 수 있습니다.)\n';
		+ '2. 차량 선적 과정에서 차량 문제 발생시 현장에서 현장 담당자에 확인이 되었을 경우에만 사고 처리 됩니다.\n';
		+ '3. 선박 운항 중 차체에 바닷물 및 이물질이 묻는 것은 당사가 책임을 지지 않습니다.\n';
		+ '4. 차량 고정시 휠커버로 인해 고정작업이 어려운 경우 커버를 제거 하여 차량 주변에 보관하게 되나 분실되는 사례가 있사오니 사전에 분리하시어 트렁크에 보관해 주시기 바랍니다.\n';
		+ '>> 차량 선적이 거부되는 경우\n';
		+ '1. 터미널에서 차량접수 마감시한(출항30분전)까지 차량선적 접수가 안된 경우 (출항시간 최소 1시간전까지 터미널 도착 권장)\n';
		+ '2. 차체가 낮은 스포츠카·개조 차량 (15cm 이하)\n';
		+ '3. 다른 차량에 손상을 줄 수 있는 외부 부착물이 있는 차량\n';
		+ '4. 선적대기 순으로 선적하고 하선되나 선박별 특성에 의해 작업유도자가 차량의 크기 및 종류에 따라 선적 위치를 변경할 수 있으며, 이의 제기시 선적이 거부 될 수 있음\n';
		+ '5. 연안여객선운송약관 제30조(운송 거절 수하물 및 특수수하물)에 의해 명시된 물품(화약류, 휘발유, 고압가스, 페인트 등)을 선적한 경우\n';
		+ '>> 차량 예약 취소 안내\n';
		+ '예약 시 전산시스템에는 일반여객/차량선적여객을 구분하여 좌석이 나뉘어 할당되어 있습니다.\n';
		+ '차량선적 예약을 하시고 추후 차량만 취소를 하실 경우 일반여객 잔여석이 매진되어 있는 경우 차량 취소 시 전체 예약이 취소 될 수 있으니 참고하시기 바랍니다.\n';
		+ '일반여객과 차량선적여객의 형평성을 고려하여 전체 좌석의 50:50 비율로 좌석이 할당 구분되어 있사오니 예약 시 참고하여 주시기 바랍니다.\n';
		+ '>> 운항통제 안내\n';
		+ '천재지변(태풍, 풍랑, 안개, 자연재해 등)에 의한 불가항력적인 사유로 인해 선박운항의 안전에 문제가 예상되는 경우 관할관청인 해양경찰이 운항통제령을 내리게 됩니다.\n';
		+ '고객님들의 예약 해당항차가 통제되는 경우 해당항차의 예약/예매(여객,차량)는 전석 취소/환불처리 되오며 다음 항차의 이용을 원하실 경우 잔여석에 한해 재예약/재결제를 하셔야 합니다.\n';
		+ ' 차량선적 안내 및 운항 통제(결항) 안내를 확인 하였으며 이에 동의 합니다.\n';
		+ '※ 차량선적을 하시는 경우에는 반드시 체크를 하셔야 합니다.\n';
		+ '- 체크박스 선택 진행시 : 차량선택 필수사항\n';
		+ '- 체크박스 해제 진행시 : 여객만 예약/예매 가능\n';
		+ ' - 공용, 동의하든 안하든 넘어가짐 >> 동의안하면 차량 선택 불가\n';

	const citylist = document.getElementById("citylist");
	var date = document.getElementById("date").value;
	var date2 = document.getElementById("date2");
	var date2value = document.getElementById("date2").value;
	const dateAll = document.getElementById("dateAll");
	
	var rt1 = document.getElementById("rt1")
	var rt2 = document.getElementById("rt2")
//------------------------------------------first page------------------------------------------	
	
//	왕복/편도 체크
	function rtcheck1() {
		date2.className = '';
		date2value = document.getElementById("date2").value;
		shiplistcheck2(pno1, pno2, pname2);
	}
	function rtcheck2() {
		document.getElementById("shiplist2").innerHTML = '';
		date2.className = 'hidden';
	}
	
//	왕복/편도 날짜 별 선박 리스트
	function datechange() {
		date = document.getElementById("date").value;
		shiplistcheck1(pno2, pno1, pname2);
	}
	function date2change() {
		date2value = document.getElementById("date2").value;
		console.log(date2value);
		shiplistcheck2(pno1, pno2, pname2);
	}
	
//	안내문
	function clickterms(ship_no) {
		var url = "${pageContext.request.contextPath}/cat1/cat11/clicktermsajax";
		var sno = ship_no;
		var param = "ship_no=" + encodeURIComponent(sno);
		
		sendRequest(url, param, clicktermsprint, "POST");
	}
	function clicktermsprint(){
		var data = xhr.responseText;
		var clt = document.getElementById("clickt");
		if(data == ''){
			return;
		}else{
			alert(data);
		}
	}
	
	function checkterms(ship_no) {
		var url = "${pageContext.request.contextPath}/cat1/cat11/checktermsajax";
		var sno = ship_no;
		var param = "ship_no=" + encodeURIComponent(sno);
		
		sendRequest(url, param, checktermsprint, "POST");
	}
	function checktermsprint(){
		var data = xhr.responseText;
		var cht = document.getElementById("checkt");
		if(data == ''){
			return;
		}else{
			alert(data);
		}
	}
	
	function sign(ship_no) {
		var url = "${pageContext.request.contextPath}/cat1/cat11/signajax";
		var sno = ship_no;
		var param = "ship_no=" + encodeURIComponent(sno);
		
		sendRequest(url, param, signprint, "POST");
	}
	function signprint(){
		var data = xhr.responseText;
		console.log(data);
		var sg = document.getElementById("signt");
		if(data == ''){
			return;
		}else{
			alert(data);
		}
	}

	var totalp = 0;
//	인원, 차량
	function dain(f){
		totalp -= document.getElementsByName("person")[0].value;
		document.getElementsByName("person")[0].value = f;
		if(f == '0'){
			document.getElementsByName("person")[0].value = 1;
		}
		totalp += Number(document.getElementsByName("person")[0].value);
		personcount();
	}
	function joongo(f){
		totalp -= document.getElementsByName("student")[0].value;
		document.getElementsByName("student")[0].value = f;
		if(f == '0'){
			document.getElementsByName("student")[0].value = 0;
		}
		totalp += Number(document.getElementsByName("student")[0].value);
		personcount();	
	}
	function soa(f){
		totalp -= document.getElementsByName("child")[0].value;
		document.getElementsByName("child")[0].value = f;
		if(f == '0'){
			document.getElementsByName("child")[0].value = 0;
		}
		totalp += Number(document.getElementsByName("child")[0].value);
		personcount();
	}
	function gyeongro(f){
		totalp -= document.getElementsByName("grand")[0].value;
		document.getElementsByName("grand")[0].value = f;
		if(f == '0'){
			document.getElementsByName("grand")[0].value = 0;
		}
		totalp += Number(document.getElementsByName("grand")[0].value);
		personcount();
	}
	function yua(f){
		totalp -= document.getElementsByName("baby")[0].value;
		document.getElementsByName("baby")[0].value = f;
		if(f == '0'){
			document.getElementsByName("baby")[0].value = 0;
		}
		totalp += Number(document.getElementsByName("baby")[0].value);
		personcount();
	}
	function cha(f){
		document.getElementsByName("car")[0].value = f;
		document.getElementById("carcnt").innerText = f + '대';
	}
	function personcount() {
		var tot = document.getElementById("percnt");
		tot.innerText = totalp + '명';
		console.log(totalp);
	}
	
	var xhr = new XMLHttpRequest();
//	cityport ajax	
	function cityportcheck(number){
		var url = "${pageContext.request.contextPath}/cat1/cat11/cityajax";
		var cno = number;
		var param = "no=" + encodeURIComponent(cno);
		if(document.getElementById("cityport") != null){
			document.getElementById("cityport").innerHTML = '';
		}
		if(document.getElementById("portlist") != null){
			document.getElementById("portlist").innerHTML = '';
		}
		if(document.getElementById("shiplist1") != null){
			document.getElementById("shiplist1").innerHTML = '';
		}
		if(document.getElementById("shiplist2") != null){
			document.getElementById("shiplist2").innerHTML = '';
		}
		if(document.getElementById("depinfo1") != null){
			document.getElementById("depinfo1").innerHTML = '';
		}
		if(document.getElementById("depinfo2") != null){
			document.getElementById("depinfo2").innerHTML = '';
		}
		if(document.getElementById("seatinfo") != null){
			document.getElementById("seatinfo").innerHTML = '';
		}
		if(document.getElementById("tooltipship") != null){
			document.getElementById("tooltipship").innerHTML = '';
		}
		sendRequest(url, param, cityport, "POST");
		console.log(xhr.readyState);
		console.log(xhr.status);
	}
	
	function cityport() {
		var newTr = document.createElement("tr");
		var newTd = document.createElement("td");
		console.log(xhr.readyState);
		console.log(xhr.status);
		console.log(xhr.response);
		if(xhr.readyState==4 && xhr.status==200) {
			var data = xhr.response;
			var data2 = JSON.parse(data);
			var cp = document.getElementById("cityport");
			cp.innerHTML = '';
			data2.forEach(function(cpt){
				cp.innerHTML += '<td><input type="button" onclick="portlistcheck(' + cpt.no + ',' + '`' + cpt.port_name +  '`)" value="' + cpt.port_name + '">';
				cp.innerHTML += '<input type="hidden" value="' + cpt.no + '" id="pno1"></td>';
			});
		}
	}
	
//	portlist ajax
	function portlistcheck(port_no1, port_name){
		if(shiplist1no != 0){
			clickterms(shiplist1no);
		}
		var url = "${pageContext.request.contextPath}/cat1/cat11/portajax";
		if(document.getElementById("shiplist1") != null){
			document.getElementById("shiplist1").innerHTML = '';
		}
		if(document.getElementById("shiplist2") != null){
			document.getElementById("shiplist2").innerHTML = '';
		}
		if(document.getElementById("depinfo1") != null){
			document.getElementById("depinfo1").innerHTML = '';
		}
		if(document.getElementById("depinfo2") != null){
			document.getElementById("depinfo2").innerHTML = '';
		}
		if(document.getElementById("seatinfo") != null){
			document.getElementById("seatinfo").innerHTML = '';
		}
		if(document.getElementById("tooltipship") != null){
			document.getElementById("tooltipship").innerHTML = '';
		}
		pno1 = port_no1;
		pname = port_name;
		var param = "port_no1=" + encodeURIComponent(pno1);
		if(document.getElementById("portlist") != null){
			document.getElementById("portlist").innerHTML = '';
		}
		sendRequest(url, param, portlist, "POST");
	}
	function portlist(){
		if(xhr.readyState==4 && xhr.status==200) {
			var data = xhr.response;
			var pl = document.getElementById("portlist");
			if(data == ''){
				pl.innerHTML += '<td>선착장이 없습니다</td>';
			}else{
				var data2 = JSON.parse(data);
				pl.innerHTML = '';
				data2.forEach(function(plist){
					pl.innerHTML += '<td><input type="button" onclick="shiplistcheck1(' + plist.no + ',' + pno1 + ',`' + plist.port_name + '`)" value="' + plist.port_name + ' - ' + pname+ '">';
					pl.innerHTML += '<input type="hidden" value="' + plist.no + '" id="pno2"></td>';
				});
			}
		}
	}

//	shiplist ajax
	function shiplistcheck1(port_no2, port_no1, port_name2){
		dateAll.className = '';
		pno1 = port_no1;
		pno2 = port_no2;
		if((pno1 == 21 && pno2 == 22) || (pno1 == 22 && pno2 == 21)){
			alert(carterms);
			document.getElementById("car").className='';
		}else if((pno1 == 9 && pno2 == 47) || (pno1 == 47 && pno2 == 9)){
			alert(carterms);
			document.getElementById("car").className='';
		}else if((pno1 == 10 && pno2 == 29) || (pno1 == 29 && pno2 == 10)){
			alert(carterms);
			document.getElementById("car").className='';
		}else if((pno1 == 30 && pno2 == 31) || (pno1 == 31 && pno2 == 30)){
			alert(carterms);
			document.getElementById("car").className='';
		}else if((pno1 == 10 && pno2 == 47) || (pno1 == 47 && pno2 == 10)){
			alert(carterms);
			document.getElementById("car").className='';
		}else if((pno1 == 13 && pno2 == 38) || (pno1 == 38 && pno2 == 13)){
			alert(carterms);
			document.getElementById("car").className='';
		}
		
		pname2 = port_name2
		var url = "${pageContext.request.contextPath}/cat1/cat11/shipajax";
		var param = "port_no1=" + encodeURIComponent(pno1) + "&port_no2=" + encodeURIComponent(pno2) + "&timetable_date=" + encodeURIComponent(date);
		
		sendRequest(url, param, shiplist1, "POST");
	}
	function shiplist1(){
		var newTr = document.createElement("tr");
		var newTd = document.createElement("td");
		if(xhr.readyState==4 && xhr.status==200) {
			var data = xhr.response;
			var s1 = document.getElementById("shiplist1");
			var s2 = document.getElementById("shiplist2");
			s1.innerHTML = '';
			s1.appendChild(newTr);
			newTd = document.createElement("td");
			newTd.innerText = "출발시간";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "선박명";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "소요시간";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "좌석등급";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "정원수";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "가격";
			newTr.appendChild(newTd);
			if(data === ''){
				s1.innerHTML = '';
				s1.innerHTML += '<tr>';
				s1.innerHTML += '<td>선박이 없습니다</td>';
				s1.innerHTML += '</tr>';
			}else{
				var data2 = JSON.parse(data);
				data2.forEach(function(cpt){
					newTr = document.createElement("tr");
					newTd = document.createElement("td");
					s1.appendChild(newTr);
					newTd = document.createElement("td");
					newTd.innerHTML = cpt.TIMETABLE_DTIME;
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = '<input type="button" id="ship" onclick="depinfocheck1('+cpt.NO+','+cpt.SEATNO+','+cpt.TIMENO+','+cpt.SEAT_PERSON+','+cpt.SEAT_STUDENT+','+cpt.SEAT_CHILD+','+cpt.SEAT_GRAND+')" onmouseover="company(' + cpt.NO + ')" value="' + cpt.SHIP_NAME + '">';
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = cpt.TIMETABLE_LTIME;
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = '<input type="button" id="seat" onmouseover="seatinfo(' + cpt.SEATNO + ')" value="' + cpt.SEAT_GRADE + '">';
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = cpt.SEAT_TOTAL;
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = cpt.SEAT_PERSON;
					newTr.appendChild(newTd);
				});
				if(rt1.checked){
					date2value = document.getElementById("date2").value;
					shiplistcheck2(pno1, pno2, pname2);
				}
			}
		} 
	}
	
	function shiplistcheck2(port_no2, port_no1, port_name2){
		
		dateAll.className = '';
		pno1 = port_no1;
		pno2 = port_no2;
		pname2 = port_name2
		
		var url = "${pageContext.request.contextPath}/cat1/cat11/shipajax";
		var param = "port_no1=" + encodeURIComponent(pno1) + "&port_no2=" + encodeURIComponent(pno2) + "&timetable_date=" + encodeURIComponent(date2value);
		
		sendRequest(url, param, shiplist2, "POST");
	}
	function shiplist2(){
		var newTr = document.createElement("tr");
		var newTd = document.createElement("td");
		if(xhr.readyState==4 && xhr.status==200) {
			var data = xhr.response;
			var s2 = document.getElementById("shiplist2");
			s2.innerHTML = '';
			s2.appendChild(newTr);
			newTd = document.createElement("td");
			newTd.innerText = "출발시간";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "선박명";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "소요시간";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "좌석등급";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "정원수";
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerText = "가격";
			newTr.appendChild(newTd);
			console.log(data);
			if(data === ''){
				s2.innerHTML = '';
				s2.innerHTML += '<tr>';
				s2.innerHTML += '<td>선박이 없습니다</td>';
				s2.innerHTML += '</tr>';
			}else{
				var data2 = JSON.parse(data);
				data2.forEach(function(cpt){
					newTr = document.createElement("tr");
					newTd = document.createElement("td");
					s2.appendChild(newTr);
					newTd = document.createElement("td");
					newTd.innerHTML = cpt.TIMETABLE_DTIME;
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = '<input type="button" id="ship" onclick="depinfocheck2('+cpt.NO+','+cpt.SEATNO+','+cpt.TIMENO+','+cpt.SEAT_PERSON+','+cpt.SEAT_STUDENT+','+cpt.SEAT_CHILD+','+cpt.SEAT_GRAND+')" onmouseover="company(' + cpt.NO + ')" value="' + cpt.SHIP_NAME + '">';
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = cpt.TIMETABLE_LTIME;
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = '<input type="button"  id="seat" onmouseover="seatinfo(' + cpt.SEATNO + ')" value="' + cpt.SEAT_GRADE + '">';
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = cpt.SEAT_TOTAL;
					newTr.appendChild(newTd);
					newTd = document.createElement("td");
					newTd.innerHTML = cpt.SEAT_PERSON;
					newTr.appendChild(newTd);
				});
			}
		}
	}
	
//	출발여정
	function depinfocheck1(ship_no, seat_no, time_no, seat_person, seat_student, seat_child, seat_grand){
		document.getElementById("ship_no1").value = ship_no;
		document.getElementById("seat_no1").value = seat_no;
		document.getElementById("timetable_no1").value = time_no;
		document.getElementsByName("seat_person")[0].value = seat_person;
		document.getElementsByName("seat_student")[0].value = seat_student;
		document.getElementsByName("seat_child")[0].value = seat_child;
		document.getElementsByName("seat_grand")[0].value = seat_grand;
		document.getElementsByName("port_name1")[0].value = pname;
		document.getElementsByName("port_name2")[0].value = pname2;
		shiplist1no = ship_no;
		var url = "${pageContext.request.contextPath}/cat1/cat11/depinfoajax";
		var param = "no=" + encodeURIComponent(ship_no);

		sendRequest(url, param, depinfo1, "POST");
	}
	function depinfo1() {
		var newTr = document.createElement("tr");
		var newTd = document.createElement("td");
		if(xhr.readyState==4 && xhr.status==200) {
			var data = xhr.response;
			var data2 = JSON.parse(data);
			var dp1 = document.getElementById("depinfo1");
			
			if(data == ''){
				dp1.innerHTML += '<tr>';
				dp1.innerHTML += '<td>선박이 없습니다</td>';
				dp1.innerHTML += '</tr>';
			}else{
				if(dp1.innerHTML != ''){
					dp1.innerHTML = '';
				}
				dp1.innerHTML += '<tr>';
				dp1.innerHTML += '<td>' + date + '</td>';
				dp1.innerHTML += '<td>' + pname2 + ' - ' + pname + '</td>';
				dp1.innerHTML += '<td>' + data2.ship_company + '</td>';
				dp1.innerHTML += '<td>' + data2.ship_comtel + '</td>';
				dp1.innerHTML += '</tr>';
			}
		}
	}
	function depinfocheck2(ship_no, seat_no, time_no, seat_person, seat_student, seat_child, seat_grand){
		checkterms(ship_no);
		document.getElementById("ship_no2").value = ship_no;
		document.getElementById("seat_no2").value = seat_no;
		document.getElementById("timetable_no2").value = time_no;
		document.firstpage.seat_person.value *= 2;
		document.firstpage.seat_student.value *= 2;
		document.firstpage.seat_child.value *= 2;
		document.firstpage.seat_grand.value *= 2;
		
		shiplist2no = ship_no;
		seatno2 = seat_no;
		timeno2 = time_no;
		var url = "${pageContext.request.contextPath}/cat1/cat11/depinfoajax";
		var param = "no=" + encodeURIComponent(ship_no);

		sendRequest(url, param, depinfo2, "POST");
	}
	function depinfo2() {
		var newTr = document.createElement("tr");
		var newTd = document.createElement("td");
		if(xhr.readyState==4 && xhr.status==200) {
			var data = xhr.response;
			var data2 = JSON.parse(data);
			var dp2 = document.getElementById("depinfo2");
			if(data == ''){
				dp2.innerHTML += '<tr>';
				dp2.innerHTML += '<td>선박이 없습니다</td>';
				dp2.innerHTML += '</tr>';
			}else{
				if(dp2.innerHTML != ''){
					dp2.innerHTML = '';
				}
				dp2.innerHTML += '<tr>';
				dp2.innerHTML += '<td>' + date2value + '</td>';
				dp2.innerHTML += '<td>' + pname + ' - ' + pname2 + '</td>';
				dp2.innerHTML += '<td>' + data2.ship_company + '</td>';
				dp2.innerHTML += '<td>' + data2.ship_comtel + '</td>';
				dp2.innerHTML += '</tr>';
			}
		}
	}

//	좌석정보
	function seatinfo(no) {
		var url = "${pageContext.request.contextPath}/cat1/cat11/seatinfoajax";
		var seatno = no;
		console.log(seatno);
		var param = "seat_no=" + encodeURIComponent(seatno);
		
		sendRequest(url, param, seatinfopr, "POST");
	}
	function seatinfopr() {
		var newTr = document.createElement("tr");
		var newTd = document.createElement("td");
		if(xhr.readyState==4 && xhr.status==200) {
			var data = xhr.response;
			var data2 = JSON.parse(data);
			var seat = document.getElementById("seatinfo");
			if(seat.innerHTML != ''){
				seat.innerHTML = '';
			}
			seat.appendChild(newTr);
			newTd = document.createElement("td");
			newTd.innerHTML = '구분';
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerHTML = '대인';
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerHTML = '중고';
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerHTML = '소아';
			newTr.appendChild(newTd);
			newTd = document.createElement("td");
			newTd.innerHTML = '경로';
			newTr.appendChild(newTd);
			if(data == ''){
				seat.innerHTML = '';
				seat.innerHTML += '<tr>';
				seat.innerHTML += '<td>좌석정보가 없습니다</td>';
				seat.innerHTML += '</tr>';
			}else {
				newTr = document.createElement("tr");
				seat.appendChild(newTr);
				newTd = document.createElement("td");
				newTd.innerHTML = '가격';
				newTr.appendChild(newTd);
				newTd = document.createElement("td");
				newTd.innerHTML = data2.seat_person + '원';
				newTr.appendChild(newTd);
				newTd = document.createElement("td");
				newTd.innerHTML = data2.seat_student + '원';
				newTr.appendChild(newTd);
				newTd = document.createElement("td");
				newTd.innerHTML = data2.seat_child + '원';
				newTr.appendChild(newTd);
				newTd = document.createElement("td");
				newTd.innerHTML = data2.seat_grand + '원' + '<input type="hidden" name="seatinfono" value="' + data2.no + '">';
				newTr.appendChild(newTd);
			}
		}
	}
	
	function company(ship_no){
		var url = "${pageContext.request.contextPath}/cat1/cat11/depinfoajax";
		var param = "no=" + encodeURIComponent(ship_no);

		sendRequest(url, param, companycheck, "POST");
	}
	function companycheck() {
		if(xhr.readyState==4 && xhr.status==200) {
			var data = xhr.response;
			var data2 = JSON.parse(data);
			var ship = document.getElementById("tooltipship");
			if(data == ''){
				ship.innerHTML += '<tr>';
				ship.innerHTML += '<td>선박이 없습니다</td>';
				ship.innerHTML += '</tr>';
			}else{
				if(ship.innerHTML != null){
					ship.innerHTML = '';
				}
				ship.innerHTML += '<tr>';
				ship.innerHTML += '<td>' + data2.ship_company + '</td>';
				ship.innerHTML += '<td>' + data2.ship_comtel + '</td>';
				ship.innerHTML += '</tr>';
			}
		}
	}
	
	function next1(){
		console.log(seatprice);
		sign(shiplist1no);
		document.firstpage.submit();
	}
	
</script>

<script type="text/javascript">
var tooltip1 = document.getElementById("ship");
var tooltip2 = document.getElementById("seat");
//툴팁 박스 
var tooltipTxt1 = document.getElementById("tooltipship");
var tooltipTxt2 = document.getElementById("seatinfo");

//마우스 move 이벤트가 발생하면
window.onload = function() {
	tooltip1.addEventListener('mousemove', function(e){
  		tooltipTxt1.style.left = e.clientX;
 		tooltipTxt.style.top = e.clientY;
	});
	
	tooltip2.addEventListener('mousemove', function(e){
  		tooltipTxt2.style.left = e.clientX;
 		tooltipTxt.style.top = e.clientY;
	});
}
</script>
</html>

