<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
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
  
  

<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
            <div class="mb-3">
        <h3 class="mb-3" align="left">회원가입</h3>
		<form class="validation-form" novalidate action="${ pageContext.request.contextPath }/userinfo/join" method="post" name = "join">
			
			 <div class="row">
		 <div class="col-md-8 mb-3" align="left">
			 <label for="user_id"> 아이디 </label>
			 
				<input type="text" class="form-control" id="id" name="user_id" autocomplete="off"  placeholder="영문숫자로 8~15자" value="" required>
				<div class="invalid-feedback"> 
			 	이름을 입력해주세요. 
			 	</div>
				</div>
				
				 <div class="col-md-4 mb-2">
				 <label for="check"> <br> </label>
				<input type="button" class="btn btn-primary btn-lg btn-block" value="중복확인" onclick="checkId(this.form)" >
				</div>
				</div>
				
				<div id="check"></div>
			 
		 	 
		 	 <div class="mb-3" align="left">
			 <label for="user_pw" > 비밀번호 </label>
			 <input type="password" class="form-control" name = "user_password" placeholder="특수기호(!@#$%^&+=)를 포함하여 영어와 숫자의 조합" required>  
		 	</div>
		 
		 	<div class="mb-3" align="left">
			 <label for="user_repw">비밀번호확인 </label>
			 <input type="password" class="form-control" name = "repw" placeholder="위와 동일하게 입력" value="" required> 
			 </div>
			 
		 <div class="row">
		  <div class="col-md-4 mb-3" align="left">
			 <label for="user_name"> 이름 </label>
			 <input type="text" class="form-control" name = "user_name"  autocomplete="off"  placeholder="한·영 입력가능" required>
		  
              </div>
		 
		 
		 <div class="col-md-4 mb-3" align="left">
			 <label for="user_gender">성별 </label>
			 
				<select class="custom-select d-block w-100" class="form-control"  name = "user_gender">
				
					<option value="남">남</option>
					<option value="여">여</option>
				</select>
			 </div>
            
             <div class="col-md-4 mb-3" align="left">
			 <label for="user_birth">생년월일 </label>
			 <input class="form-control"  type="date" name = "user_birth" max="2020-01-01"
         min="1920-01-01" value="2000-01-01">
         </div>
            </div>
            
		 <div class="mb-3" align="left">
			 <label for="user_email"> 이메일 </label>
			 <input class="form-control"  type="email" name = "user_email"  placeholder="you@example.com"> 
		 </div>
			 
				<input type="hidden" name = "user_tel">
				<div align="left"> 
			<label for="user_tel">휴대전화번호 </label> <br></div> 
			
		  <div class="row" >
				  <div class="col-md-4 mb-3">
				<select class="custom-select d-block w-100" name = "user_tel1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="019">019</option>
				</select>
				</div>
				<div class="col-md-4 mb-3"><input class="form-control" type="text" size = "5" maxlength="4" name = "user_tel2">
				</div>
				<div class="col-md-4 mb-3"><input class="form-control" type="text" size = "5" maxlength="4" name = "user_tel3">
				</div>
			</div>
			
			<input type="hidden" name = "user_terms" value="${user_terms} ">
			<hr class="mb-4">
			
				<input class="btn btn-outline-secondary" type="button" id ="join" disabled="disabled" value="가입하기" onclick="javascript:checkJoin()">
				<input class="btn btn-outline-secondary" type="button" value="취소" onclick="history.back()" >
</form>
 </div>
    </div>
 </div>
    </div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>

    
<script>
	console.log(typeof(${user_terms}));

	function checkJoin(){
		var name_pattern = /^[가-힣a-zA-Z]+$/;			// 한글&영어만 -- 이름
		var id_pattern = /^[A-Za-z0-9]{8,15}$/;	// 영문 숫자만 8자에서 15자리까지만 --아이디
		var pw_pattern = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/; 
		// 영문숫자특수문자조합 8자리 이상 15자리까지만 -- 비밀번호
		// var email_pattern;
		// var birth_pattern;
		
		var j = document.join;
		
		if(j.user_id.value == ""){
			alert("아이디를 입력하십시오!");
		}/* else if(!id_pattern.test(j.user_id.value)){
			alert("아이디는 영문 숫자만 되고 8자에서 15자까지만 됩니다!");
		} */else if(j.user_password.value == ""){
			alert("비밀번호를 입력하십시오!");
		}else if(j.repw.value == ""){
			alert("비밀번호확인을 입력하십시오!");
		}else if(!pw_pattern.test(j.user_password.value)){
			alert("비밀번호는 영문숫자특수문자조합 8자에서 15자 까지만 됩니다!");
		} else if(j.user_name.value == ""){
			alert("이름을 입력하십시오!");
		}else if(!name_pattern.test(j.user_name.value)){
			alert("이름은 한글과 영어만 입력가능합니다!");
		} else if(j.user_email.value == ""){
			alert("이메일을 입력하십시오!");
		} else if(j.user_tel1.value == ""){
			alert("전화번호를 입력하십시오!");
		} else if(j.user_tel2.value == ""){
			alert("전화번호를 입력하십시오!");
		} else if(j.user_tel3.value == ""){
			alert("전화번호를 입력하십시오!");
		} 
		else if(j.user_password.value != j.repw.value){
			alert("비밀번호확인이 일치하지 않습니다.");
		}else{
			j.user_tel.value = j.user_tel1.value + j.user_tel2.value + j.user_tel3.value;
			j.submit();
		}
	}
	
	function checkId(f) {
		var id_pattern = /^[A-Za-z0-9]{8,15}$/;
		
		if(f.user_id.value == ""){
			alert("아이디를 입력하십시오!");
			return;
		}else if(!id_pattern.test(f.user_id.value)){
			alert("아이디는 영문 숫자만 되고 8자에서 15자까지만 됩니다!");
			return;
		}
		
		var url = "${pageContext.request.contextPath}/userinfo/checkId";
		var param = "id=" + encodeURIComponent(f.id.value);
		
		sendRequest(url,param,resultFn,"POST");
	}
	
	function resultFn(){
		if(xhr.readyState==4 && xhr.status==200) {
			//도착된 데이터를 읽어오기
			var data = xhr.responseText;
			const join = document.getElementById("join");
			const check = document.getElementById('check');
			const id = document.getElementById('id');
			
			check.innerText = '';
			console.log(data);
			if(data === '사용 가능한 ID입니다'){
				check.style.cssText=" color: blue; font-size: 13px; ";
				join.disabled=false;
				id.readOnly = true;
			}else{
				check.style.cssText=" color: red; font-size: 13px; ";	
				join.disabled=true;
			}
			
			check.innerText = data;
		}
	}
	
	
</script>









