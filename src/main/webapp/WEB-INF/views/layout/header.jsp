<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="css/flaticon.css">
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <!-- magnific CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/gijgo.min.css">
    <!-- niceselect CSS -->
    <link rel="stylesheet" href="css/nice-select.css">
    <!-- slick CSS -->
    <link rel="stylesheet" href="css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">

	<!-- bootstrap & jQuery & ajax-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
 
    <!-- CSS -->
	<link href="resources/css/styles.css" rel="stylesheet" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	    
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gijgo.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.map">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/swiper.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
	
	<!-- JS -->
	<script type="text/javascript" src="/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/httpRequest.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/gijgo.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/gmaps.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/masonry.pkgd.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/masonry.pkgd.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/particles.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/swiper_custom.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/swiper.min.js"></script>
		
	<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/summernote/js/summernote-lite.js"></script>
	<script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/css/summernote-lite.css">
    
    <title>섬, 어디까지 가 봤니</title>
    
</head>

<body>
   <!--::header part start::-->
   <header class="main_menu">
   		<div class="main_menu_iner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-md-6">
                    </div>
                    <div class="container_login">
                        <div class="login">
                        	<c:choose>
				            <c:when test="${!empty login}">
				            	<i class="bi bi-person-circle"></i><a href="${pageContext.request.contextPath}/userinfo/mypage">마이페이지  </a>
				            	<i class="bi bi-door-closed-fill"></i><a href="${pageContext.request.contextPath}/login/logout">로그아웃  </a>
				               
		             		 	<c:choose>
					               <c:when test="${!empty mngcheck}">
					            	   <i class="bi bi-gear-fill"></i><a href="${pageContext.request.contextPath }/userinfo/userlist">관리자페이지</a>
					               </c:when>
				               	</c:choose>
				           	</c:when>  
				            <c:otherwise>
				               <i class="bi bi-person-check-fill"></i><a href="${pageContext.request.contextPath}/login/loginform">로그인  </a>
				               <i class="bi bi-person-plus-fill"></i><a href="${pageContext.request.contextPath}/userinfo/jointerms">회원가입</a>
				            </c:otherwise>
			     		    </c:choose>
                        </div>
                    </div>
                </div>
            </div>
  				
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navbarSupportedContent">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/upload/materials/mainlogo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        </button>

                            <ul class="navbar-nav">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        승선예매
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat1/cat11">예매하기</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat1/cat12/list">예매확인및취소</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat1/cat13/list">예매관련안내</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        운항정보
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat21/list">실시간운항정보</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat22/list">터미널뉴스</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat23/insertForm">차량운임조회</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat24/insertForm">시간표/요금조회</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat25/list">실시간운항현황</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        가고싶은섬
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat31/list">섬정보검색</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat32/list?mngbrd_ctgrno=32">이야기가있는섬</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat33/list?mngbrd_ctgrno=33">지금그섬에는</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat34/content?mngbrd_ctgrno=34">아름다운섬풍경</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat36/list?mngbrd_ctgrno=36">UCC</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat37/list?mngbrd_ctgrno=37">섬여행공모전</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        여행지식인
                                    </a>
                          		    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat4/shipcompany">선박선사정보</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat42/terminalinfo">여객터미널안내</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat4/travelready">섬여행준비</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat44/tide">조석정보</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat4/site?infobrd_ctgrno=451">관련사이트</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        참여공간
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat51/list">새로운소식</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat52/list">섬여행평가하기</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1"
                                        role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        고객센터
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat6/cat61/list">예매문의</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat4/consulting">섬여행상담실</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat62/list">자주묻는질문</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/cat63/list">건의사항</a><!-- 나의섬여행담 -->
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->

	<!-- fixed button start -->     
    <div class="mainbtn">
    	<a href="${pageContext.request.contextPath}/cat1/cat11/" class="mainbtn1 d-none d-lg-block">예매하기</a>
    </div>
	<!-- fixed button end -->
	<div align="center">
	