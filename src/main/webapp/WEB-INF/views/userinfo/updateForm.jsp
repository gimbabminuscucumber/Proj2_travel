<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	function check(){
		var c = document.update;
		var name_pattern = /^[가-힣a-zA-Z]+$/;			// 한글&영어만 -- 이름
		var pw_pattern = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/; 
		// 영문숫자특수문자조합 8자리 이상 15자리까지만 -- 비밀번호
		
		if(c.user_email.value == ""){
			alert("이메일을 입력하십시오!");
		}else if(c.user_password.value == ""){
			alert("비밀번호를 입력하십시오!");
		}else if(c.repw.value == ""){
			alert("비밀번호확인을 입력하십시오!");
		}else if(c.user_name.value == ""){
			alert("변경할 이름을 입력하십시오!");
		}else if(c.user_email.value == ""){
			alert("이메일을 입력하십시오!");
		}else if(c.user_tel.value == ""){
			alert("전화번호를 입력하십시오!");
		}else if(c.user_password.value != c.repw.value){
			alert("비밀번호가 일치하지 않습니다.");
		}else if(!name_pattern.test(c.user_name.value)){
			alert("이름은 한글과 영어만 입력가능합니다!");
		}else if(!pw_pattern.test(c.user_password.value)){
			alert("비밀번호는 영문숫자특수문자조합 8자에서 15자 까지만 됩니다!");
		}
		
		
		else{
			document.update.submit();
		}
	}
</script>

<%@include file = "/WEB-INF/views/layout/header.jsp" %>

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
<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
            <div class="mb-3">
            <h3 class="mb-3" align="left">회원정보수정</h3>
            
 		<form class="validation-form" action="${ pageContext.request.contextPath }/userinfo/update" method="post" name = "update">
			
			<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control " >번호</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div class="form-control" >${vo.no }</div>
				</div>
		</div>
		
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >아이디</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div class="form-control" >${vo.user_id }</div>
				</div>
		</div>
		
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >변경할 이름</div>
				 </div>
			<div class="col-md-3 mb-3">	
				<div><input class="form-control" type="text" name = "user_name" value="${vo.user_name }" ></div>
				</div>
			 <div class="col-md-2 mb-3">
				<div class="form-control" >성별</div>
				 </div>
			<div class="col-md-2 mb-3">	
				<div><select name = "gender" class="custom-select d-block w-100" class="form-control">
					<option value="남">남</option>
					<option value="여">여</option>
				</select></div>
				</div>	
			</div>
		
		
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >변경 비밀번호</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div><input class="form-control" type="password" name = "user_password" ></div>
				</div>
		</div>
			
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >변경 비밀번호 확인</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div><input class="form-control" type="password" name = "repw" ></div>
				</div>
		</div>	
			 	
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >변경 전화번호(-없이)</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div><input class="form-control" type="text" name = "user_tel"  value="${vo.user_tel}" ></div>
				</div>
		</div>	 
		
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >변경할 이메일</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div><input class="form-control" type="text" name = "user_email"  value="${vo.user_email}" ></div>
				</div>
		</div>	 
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >변경할 생년월일</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div><input class="form-control" type="date" name = "user_birth" max="2020-01-01"
         min="1920-01-01" value="${vo.user_birth}" ></div>
				</div>
		</div>		
			 		
					
			 	
			 		<hr class="mb-4">
			 			<input class="btn btn-outline-secondary" type="button" value = "수정" onclick="javascript:check()">
			 			<input class="btn btn-outline-secondary" type="button" value = "돌아가기" onclick="location.href='${ pageContext.request.contextPath }/userinfo/mypage'">
 	</form>
 	
 	</div>
	</div></div>
	</div>
<%@include file = "/WEB-INF/views/layout/footer.jsp" %>