<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <div class="input-form col-md-9 mx-auto">
            
            <h3 class="mb-3" align="left">마이페이지</h3>
            
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
				<div class="form-control" >이름</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div class="form-control" >${vo.user_name }</div>
				</div>
		</div>
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >성별</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div class="form-control" >${vo.user_gender }</div>
				</div>
		</div>
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >생년월일</div>
				 </div>
			<div class="col-md-7 mb-3">	
			<fmt:parseDate value="${vo.user_birth }" var="dateValue" pattern="yyyy-MM-dd"/>
				<div class="form-control" ><fmt:formatDate value="${dateValue }" pattern="yyyy-MM-dd"/></div>
				</div>
		</div>
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >이메일</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div class="form-control" >${vo.user_email }</div>
				</div>
		</div>
		<div class="row">
           <div class="col-md-5 mb-3">
				<div class="form-control" >전화번호</div>
				 </div>
			<div class="col-md-7 mb-3">	
				<div class="form-control" >${vo.user_tel }</div>
				</div>
		</div>
		<hr class="mb-4">
				<input class="btn btn-outline-secondary" type="button" value = "수정" onclick="location.href = '${ pageContext.request.contextPath }/userinfo/updateform'">
				<input class="btn btn-outline-secondary" type="button" value = "회원탈퇴" onclick="location.href = '${ pageContext.request.contextPath }/userinfo/deleteform'">
		</div>
		</div>
		</div>
		
<%@include file = "/WEB-INF/views/layout/footer.jsp" %>