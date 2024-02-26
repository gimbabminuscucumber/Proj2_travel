 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function check(){
		if(document.del.password.value == ""){
			alert("비밀번호를 입력하십시오!!!");
		}else{
			document.del.submit();
		}
	}
</script>
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
<%@include file="/WEB-INF/views/layout/header.jsp" %>
<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
	<form action="${ pageContext.request.contextPath }/userinfo/delete" method="post" name = "del">
			<tr>
				<th>${vo.user_id }님의 비밀번호 확인</th>
			</tr>
			<tr>
				<td>
					<input type="password" name = "password" placeholder="비밀번호 확인">
				</td>
			</tr>
			<tr>
				<td align="right">
					<input class="btn btn-outline-secondary" type="button" value="탈퇴" onclick="javascript:check()">
					<input class="btn btn-outline-secondary" type="button" onclick="location.href='${ pageContext.request.contextPath }/userinfo/mypage'" value="돌아가기">				
				</td>
			</tr>
	</form>
		</div>
				</div>
				</div>

<%@include file="/WEB-INF/views/layout/footer.jsp" %>