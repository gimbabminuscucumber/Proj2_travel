<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">

	table {
		width: 800px;
		border-spacing: 0px;
	} 
	
	tr, th{
		height: 50px;
		border-spacing: 0px;
	} 
	
	td { 
		border-spacing: 0px;
		text-align: left;
	}
	
	.ctgr { 
		border-spacing: 0px;
		color: #BDBDBD;
		width: 15%;
	}
	
	.topLine{
		border-top: 2px solid #172C51;	
	}
	
	.btmLine{
		border-bottom: 1px solid #BDBDBD;	
	}
	
</style>    
<script type="text/javascript">

	function check(f){
		if(f.type.value == "no"){
			var num_pattern = /^[0-9]{1,20}$/;
			
			if(f.word.value == "" || !num_pattern.test(f.word.value)){
				alert("글번호를 입력하세요");
				return false;
			}
		}else if(f.word.value == ""){
			alert("검색어를 입력하세요");
			return false;
		}
		
		return true;
	}

</script>  
    
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>		<!-- c:set 태그 : 변수명 설정할 떄 사용 -->

<!-- 상단 카테고리 이름 들어간 박스-->
<section class="breadcrumb breadcrumb_bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb_iner">
                    <div class="breadcrumb_iner_item text-center">
                        <h2>자주묻는 질문</h2>
                        <p>고객분들이 자주 주신 질문들입니다!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<div>
<br><h2>자주묻는 질문</h2><br>
	<table class="topLine">
		<c:forEach var="faq" items="${list }">
			<tr>
				<th>[ ${faq.infobrd_title } ]</th>
			</tr>
			<tr class="btmLine">
				<td colspan="2" height="80px">${faq.infobrd_content }</td>
			</tr>
		</c:forEach>
	</table>
</div>	
<br>
	
<br>
