<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/layout/header.jsp" %>	
    
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>친절한 여행 지식인</h2>
                            <p>관련사이트</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> 
    
    <div class="button-group-area mt-10" align="center">
    
    <a href="javascript:void(0)" onclick="toggleFetchContent()"
    	 class="genric-btn info-border circle">해양자료실</a>
    	 
    <a href="javascript:void(0)" onclick="toggleFetchContent2()"
    	 class="genric-btn info-border circle">교육/여행 정보</a>
    	 
    <a href="javascript:void(0)" onclick="toggleFetchContent3()"
    	 class="genric-btn info-border circle">지역별 섬 정보</a>
    	 
    <a href="javascript:void(0)" onclick="toggleFetchContent4()"
    	 class="genric-btn info-border circle">선사 사이트</a>
    	 
    <a href="javascript:void(0)" onclick="toggleFetchContent5()"
    	 class="genric-btn info-border circle">불편신고 사이트</a>
    	 
    </div>
    <br>
    
    <article id="fetchContent" name="f"></article>

<script>
window.onload = toggleFetchContent;
    function toggleFetchContent() {
        var fetchContent = document.getElementById('fetchContent');
        for(var i = 0; i < 5; i++){
    		var f = document.getElementsByName("f")[i];
    		console.log(f);
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('godid?infobrd_ctgrno=451').then(function(response){
	response.text().then(function(text){
		fetchContent.innerHTML = text;
	});
});
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

    <article id="fetchContent2" name="f"></article>

<script>
    function toggleFetchContent2() {
        var fetchContent = document.getElementById('fetchContent2');
        for(var i = 0; i < 5; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('rydbr?infobrd_ctgrno=452').then(function(response){
	response.text().then(function(text){
		fetchContent.innerHTML = text;
	});
});
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

    <article id="fetchContent3" name="f"></article>

<script>
    function toggleFetchContent3() {
        var fetchContent = document.getElementById('fetchContent3');
        for(var i = 0; i < 5; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('wldur?infobrd_ctgrno=453').then(function(response){
	response.text().then(function(text){
		fetchContent.innerHTML = text;
	});
});
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>
    <article id="fetchContent4" name="f"></article>

<script>
    function toggleFetchContent4() {
        var fetchContent = document.getElementById('fetchContent4');
        for(var i = 0; i < 5; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tjstk').then(function(response){
	response.text().then(function(text){
		fetchContent.innerHTML = text;
	})
});
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

  <article id="fetchContent5" name="f"></article>

<script>
    function toggleFetchContent5() {
        var fetchContent = document.getElementById('fetchContent5');
        for(var i = 0; i < 5; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('qnfvus?infobrd_ctgrno=455').then(function(response){
	response.text().then(function(text){
		fetchContent.innerHTML = text;
	});
});
        } else {
            // Fetch 내용을 닫기
            fetchContent.innerHTML = '';
        }
    }
</script>

<br><br>
    
    <%@ include file="/WEB-INF/views/layout/footer.jsp" %>