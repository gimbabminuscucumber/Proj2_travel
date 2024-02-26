<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/layout/header.jsp" %>	
             <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>친절한 여행 지식인</h2>
                            <p>황이팅</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
<!-- hotel list css start-->
    <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>터미널 정보</h2>
                        <p>대중교통 안내 및 주차장 정보</p>
                    </div>
                </div>
            </div>
            <br><br><br>
            
            <div class="hi">
            <div class="row hi_1">
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/pohang.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent()" class="place_btn">터미널 정보 보기</a>
                    <h3>포항 여객선 터미널</h3>
                    <p>Pohang Ferry Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent"></article>

<script>
    function toggleFetchContent() {
        var fetchContent = document.getElementById('fetchContent');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=14').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<div class="row hi_1">
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/nokdong.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent2()" class="place_btn">터미널 정보 보기</a>
                    <h3>녹동 여객선 터미널</h3>
                    <p>Nokdong Ferry Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent2"></article>

<script>
    function toggleFetchContent2() {
        var fetchContent = document.getElementById('fetchContent2');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=3').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<div class="row hi_1">
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/mokpo.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent3()" class="place_btn">터미널 정보 보기</a>
                    <h3>목포 여객선 터미널</h3>
                    <p>Mokpo Ferry Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent3"></article>

<script>
    function toggleFetchContent3() {
        var fetchContent = document.getElementById('fetchContent3');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=6').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<div class="row hi_1">
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/boryung.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent4()" class="place_btn">터미널 정보 보기</a>
                    <h3>대천 연안 여객선 터미널</h3>
                    <p>Daecheon Coast Passenger Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent4"></article>

<script>
    function toggleFetchContent4() {
        var fetchContent = document.getElementById('fetchContent4');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=7').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<div class="row hi_1">
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/busan.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent5()" class="place_btn">터미널 정보 보기</a>
                    <h3>부산 여객선 터미널</h3>
                    <p>Busan Ferry Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent5"></article>

<script>
    function toggleFetchContent5() {
        var fetchContent = document.getElementById('fetchContent5');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=8').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<div class="row hi_1">
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/yeosu.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent6()" class="place_btn">터미널 정보 보기</a>
                    <h3>여수 여객선 터미널</h3>
                    <p>Yeosu Ferry Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent6"></article>

<script>
    function toggleFetchContent6() {
        var fetchContent = document.getElementById('fetchContent6');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=9').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<div class="row hi_1">
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/wando.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent7()" class="place_btn">터미널 정보 보기</a>
                    <h3>완도 여객선 터미널</h3>
                    <p>Wando Ferry Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent7"></article>

<script>
    function toggleFetchContent7() {
        var fetchContent = document.getElementById('fetchContent7');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=10').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<div class="row hi_1">
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/incheon.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent8()" class="place_btn">터미널 정보 보기</a>
                    <h3>인천 여객선 터미널</h3>
                    <p>Incheon Ferry Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent8"></article>

<script>
    function toggleFetchContent8() {
        var fetchContent = document.getElementById('fetchContent8');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=11').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<div class="row hi_1">
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/jeju.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent9()" class="place_btn">터미널 정보 보기</a>
                    <h3>제주 여객선 터미널</h3>
                    <p>Jeju Ferry Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent9"></article>

<script>
    function toggleFetchContent9() {
        var fetchContent = document.getElementById('fetchContent9');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=12').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<div class="row hi_1"> 
    <div class="col-lg-6 col-md-6 hi_1">
        <div class="single_place">
            <img class="fixed-size-image" src="${pageContext.request.contextPath}/resources/upload/materials/tongyoung.png" alt="">
            <div class="hover_Text d-flex align-items-end justify-content-between">
                <div class="hover_text_iner">
                    <a href="javascript:void(0)" onclick="toggleFetchContent10()" class="place_btn">터미널 정보 보기</a>
                    <h3>통영 여객선 터미널</h3>
                    <p>Tongyeong Ferry Terminal</p>
                </div>
                <div class="details_icon text-right">
                    <i class="ti-share"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<article id="fetchContent10"></article>

<script>
    function toggleFetchContent10() {
        var fetchContent = document.getElementById('fetchContent10');

        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('terminalmap?port_no=13').then(function(response) {
                response.text().then(function(text) {
                    fetchContent.innerHTML = text;
                });
            });
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

</div>


<%@ include file="/WEB-INF/views/layout/footer.jsp" %>