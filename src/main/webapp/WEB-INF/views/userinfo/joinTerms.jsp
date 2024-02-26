<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
<style type="text/css">
	label {
  		display: block;
	}
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>   

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
 
function checkTerms(){
const checkbox = document.getElementsByName('agree')
	 if(!checkbox[0].checked){
		alert("필수항목에 동의해주세요!");
	}else if(!checkbox[1].checked){
		alert("필수항목에 동의해주세요!");
	}else if(!checkbox[2].checked){
		alert("필수항목에 동의해주세요!");
	}else if(!checkbox[3].checked){
		alert("필수항목에 동의해주세요!");
	}else if(!checkbox[4].checked){
		
		document.getElementsByName("user_terms")[0].value = 0;
		document.joinTerms.submit(); //0을 주고
		
	}else if(checkbox[4].checked){
		document.getElementsByName("user_terms")[0].value = 1;
		document.joinTerms.submit(); //1을 주고
		
	}  
	
	
}


function checkSelectAll()  {
	  // 전체 체크박스
	  const checkboxes 
	    = document.querySelectorAll('input[name="agree"]');
	  // 선택된 체크박스
	  const checked 
	    = document.querySelectorAll('input[name="agree"]:checked');
	  
	/*   const checkbox = document.getElementsByName('agree')[4].value;
	  console.log(checkbox); */
	  
	  // select all 체크박스
	  const selectAll 
	    = document.querySelector('input[name="agree_all"]');
	  
	  if(checkboxes.length === checked.length)  {
		  selectAll.checked = true;
	  }else {
		  selectAll.checked = false;
	  }
	}
	
	function selectAll(selectAll)  {
	  const checkboxes 
	     = document.getElementsByName('agree');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
	}
</script>    



<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
            <div class="mb-3">
 	<h3 class="mb-3" align="left">회원약관 </h3>
 	<hr class="mb-4">
 <form class="validation-form" action="${ pageContext.request.contextPath }/userinfo/joinform" method="post" name = "joinTerms">
	<input type="hidden" name="user_terms">
		<c:forEach var="vo" items="${terms }">
		
						<div class="col-md-13 mb-3" align="center">
						<label for="subtitle">	
						※ ${vo.terms_subtitle } &nbsp;
						<input name="agree" type="checkbox" value="${vo.no }" onclick="checkSelectAll()"><small>동의</small>
						</label>
						</div>
							<label for="terms_content">	
							<textarea  rows="5" cols="80" readonly> ${vo.terms_content }  </textarea> 
							</label>
							<br>
					</c:forEach>
					
				<div>
	 	 	※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 회원가입과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다. <br><br>
			  </div>	
			  <label for="agree_all">
	 	 	<input type="checkbox" name="agree_all" id="agree_all" onclick="selectAll(this)">
	  			<span>모두 동의합니다</span>
	 	 	</label>
	 	 	
			
			
			<hr class="mb-4">
			<div class="mb-4"></div>
			<input class="btn btn-outline-secondary" type="button"  value="이전" onclick="history.back()" >
			<input class="btn btn-outline-secondary" id="joinTerms"  type="button" value="다음" onclick="javascript:checkTerms()" > 
 </form>
  </div>
    </div>
 </div>
    </div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>











