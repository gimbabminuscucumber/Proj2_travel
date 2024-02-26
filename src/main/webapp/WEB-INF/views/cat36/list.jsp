<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<%@ include file="/WEB-INF/views/layout/header_cat3.jsp" %>

<div class="main_image">
     <a href="${pageContext.request.contextPath}/cat36/list?mngbrd_ctgrno=36"> <img src="${pageContext.request.contextPath }/resources/photo/sum.jpg" width="100%" height="250px"></a>
    <h1 class="main_image_text" style="font-size:30px">UCC</h1>
</div>

<section class="top_place section_padding">
     <div class="container">
         <div class="row justify-content-center">
             <div class="col-xl-6">
                 <div class="section_tittle text-center">
                     <h2>내가 만드는<br>UCC 안전교육 공모전</h2>
                     <p>UCC공모전 당선작을 소개합니다<br>
                     	해양수산부가 주최하고 한국해운조합이 주관한 UCC 공모전의 당선작을 감상하세요.
                     </p>
                 </div>
             </div>
         </div>
         
         <div>
            <h2>대상</h2>
         	<iframe width="560" height="315" src="https://www.youtube.com/embed/1cwM0lbMAUw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            <br>
            <h2>우수상</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/QPIZRierllA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
         	<iframe width="560" height="315" src="https://www.youtube.com/embed/NlLunAbGL-0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
         </div>
     </div>
</section>

	
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>		





