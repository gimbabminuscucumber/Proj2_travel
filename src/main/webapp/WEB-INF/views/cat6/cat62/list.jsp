<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/layout/header.jsp" %>	
    
    <div class="button-group-area mt-10" align="center">
    
    <a href="javascript:void(0)" onclick="toggleFetchContent()"
    	 class="genric-btn info-border circle">예매 관련 정보</a>
    	 
    <a href="javascript:void(0)" onclick="toggleFetchContent2()"
    	 class="genric-btn info-border circle">교환 및 환불</a>
    	 
    <a href="javascript:void(0)" onclick="toggleFetchContent3()"
    	 class="genric-btn info-border circle">일정 상세 정보</a>
    	 
    <a href="javascript:void(0)" onclick="toggleFetchContent4()"
    	 class="genric-btn info-border circle">선적 및 애견</a>
    	 
    <a href="javascript:void(0)" onclick="toggleFetchContent5()"
    	 class="genric-btn info-border circle">그 외 정보</a>
    	 
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
            fetch('list1').then(function(response){
	response.text().then(function(text){
		console.log(text);
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
            fetch('list2').then(function(response){
	response.text().then(function(text){
		console.log(response.text());
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
            fetch('list3').then(function(response){
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
            fetch('list4').then(function(response){
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
            fetch('list5').then(function(response){
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