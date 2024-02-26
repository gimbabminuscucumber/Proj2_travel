<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>


<style>
  .styled-table {
    border-collapse: collapse;
    width: 100%;
  }

  .styled-table th,
  .styled-table td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  .styled-table th {
    background-color: #f2f2f2;
    font-weight: bold;
  }

  .styled-table tr:nth-child(even) {
    background-color: #f9f9f9;
  }
</style>

<section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>친절한 여행 지식인</h2>
                            <p>선박선사정보</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<br><br>
<div align="center">
	<table class="styled-table">
		<tr>
			<th>선사명</th>
			<th>선박명</th>
			<th>운행구간</th>
		</tr>
		<c:forEach var="vo" begin="1" end="${fn:length(list)}" step="1" items="${list }">
		
		<tr>
			<td>
				<a href="${vo.ship_comurl }">${vo.ship_company }</a>
				<br>
				${vo.ship_comtel }
			</td>
			<td>
				<a href="javascript:void(0)" onclick="fetch('shipinfo?no=${vo.no}').then(function(response){
					response.text().then(function(text){
						document.querySelector('article').innerHTML = text;
					})
					})">${vo.ship_name }
				</a>
			</td>
			<td>
				${vo.ship_interval }
			</td>
		</tr>
		
		
		
		<%-- <tr>
			<td>
			<c:forEach var="vo" items="${list }">
				${vo.ship_company }
			</c:forEach>
			</td>
			<td>
			<c:forEach var="vo" items="${list }">
				${vo.ship_name }
			</c:forEach>
			</td>
			<td>
			<c:forEach var="vo" items="${list }">
				${vo.ship_interval }
			</c:forEach>
			</td>
		</tr> --%>
		</c:forEach>
	</table>
	<article>
		
		</article>
</div>

<br><br>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
