<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/layout/header.jsp" %>


<div class="mainbody">
    <!-- banner part start-->
    
    <div class="">
	    <div class="bg">
			<video muted autoplay loop>
				<source src="${pageContext.request.contextPath}/resources/upload/materials/cruise5.mp4" type="video/mp4">
				<strong>브라우저가 동영상 재생을 지원하지 않습니다.</strong>
			</video>
		    
		    <div class="videoOver">
		    	<div class="banner_part">
		    		<div class="banner_text">
				    	<div class="banner_text_iner">
		                    <h1>가보고싶은섬</h1>
		                    <p>여객선 예약예매</p>
		                    <p>Let’s start your journey with us, your dream will come true</p>
		                    <a href="${pageContext.request.contextPath}/views/cat1/cat12/list" class="btn_1">예매확인 및 조회</a>
		                </div>
	                </div>
                </div>		     	
		    </div>    
		</div>
    </div>
    <!-- banner part end-->

    <!--::industries start::-->
    <section class="hotel_list section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="${pageContext.request.contextPath}/cat1/cat13/list"><img src="${pageContext.request.contextPath}/resources/img/ind/industries_1.png" alt=""></a>

                        <div class="hotel_text_iner">
                            <h3> <a href="${pageContext.request.contextPath}/cat1/cat13/list">예매관련안내</a></h3>
                        </div>
                        <br><br><br>
                        
                        <div class="hotel_text_under">
                            <p>예매하기 전 숙지해야 할 안내사항입니다.<br><br></p>           
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="${pageContext.request.contextPath}/cat62/list"><img src="${pageContext.request.contextPath}/resources/img/ind/industries_2.png" alt=""></a>

                        <div class="hotel_text_iner">
                            <h3> <a href="${pageContext.request.contextPath}/cat62/list">자주묻는질문</a></h3>
                        </div>
                        <br><br><br>
                        
                        <div class="hotel_text_under">
                            <p>궁금한 질문이 이미 있는지 확인해 보세요!<br><br></p>           
                        </div>

                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="${pageContext.request.contextPath}/cat6/cat61/list"><img src="${pageContext.request.contextPath}/resources/img/ind/industries_3.png" alt=""></a>

                        <div class="hotel_text_iner">
                            <h3> <a href="${pageContext.request.contextPath}/cat6/cat61/list">예매관련문의</a></h3>
                        </div>
                        <br><br><br>
                        
                        <div class="hotel_text_under">
                            <p>예매 관련 궁금한 사항들을 질문할 수 있습니다.<br><br></p>           
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::industries end::-->

	<div>
		
	</div>

</div>
    
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
    
    