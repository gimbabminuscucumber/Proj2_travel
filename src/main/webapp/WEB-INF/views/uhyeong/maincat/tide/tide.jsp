<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>	

<style>
  .styled-table {
    border-collapse: collapse;
    width: 100%;
  }

  .styled-table th,
  .styled-table td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  .styled-table th {
    background-color: #f2f2f2;
    font-weight: bold;
  }

  .styled-table tr:nth-child(even) {
    background-color: #f9f9f9;
  }
</style>

<section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>친절한 여행 지식인</h2>
                            <p>조석정보</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

 <div class="button-group-area mt-10" align="center">
 
  <a href="javascript:void(0)" onclick="toggleFetchContent()"
    	 class="genric-btn info-border circle">포항</a>
    	 
  <a href="javascript:void(0)" onclick="toggleFetchContent2()"
    	 class="genric-btn info-border circle">녹동</a>
    	 
  <a href="javascript:void(0)" onclick="toggleFetchContent3()"
    	 class="genric-btn info-border circle">목포</a>
    	 
  <a href="javascript:void(0)" onclick="toggleFetchContent4()"
    	 class="genric-btn info-border circle">보령</a>
    	 
  <a href="javascript:void(0)" onclick="toggleFetchContent5()"
    	 class="genric-btn info-border circle">부산</a>
    	 
  <a href="javascript:void(0)" onclick="toggleFetchContent6()"
    	 class="genric-btn info-border circle">여수</a>
    	 
  <a href="javascript:void(0)" onclick="toggleFetchContent7()"
    	 class="genric-btn info-border circle">완도</a>
    	 
  <a href="javascript:void(0)" onclick="toggleFetchContent8()"
    	 class="genric-btn info-border circle">인천</a>
    
  <a href="javascript:void(0)" onclick="toggleFetchContent9()"
    	 class="genric-btn info-border circle">제주</a>
    	 
  <a href="javascript:void(0)" onclick="toggleFetchContent10()"
    	 class="genric-btn info-border circle">통영</a>
    	 
    	 </div>
    	
    	 
    	 <br><br>
    	 
    	 <!DOCTYPE html>
<html>
<head>
    <style>
        .box {
            background-color: #E0E8F0;
            padding: 20px;
            border-radius: 10px;
            border: 2px solid #3498DB;
            color: #000000;
            font-size: 16px;
            line-height: 1.5;
            text-align: center;
            width: 80%;
            margin: 0 auto;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="box">
        <p>
            본자료는 국립해양조사원이 제공하고 가보고 싶은 섬이 
            국립해양조사원에 동의를 얻어서 서비스하고 있습니다. 
            <br>
            상업적인 목적이나 허가되지 않은 경로로 통하여 재배포 
            및 사용 행위는 금지하며, 이를 위반할 시 저작권법에 
            처벌될 수 있으므로 유의하시기 바랍니다.
        </p>
    </div>
</body>
</html>
    	 
    <br><br>
    	 
 <article id="fetchContent" name="f"></article>

<script>
window.onload = toggleFetchContent;
    function toggleFetchContent() {
        var fetchContent = document.getElementById('fetchContent');
    	console.log("포항");
    	for(int i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=14').then(function(response){
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
        for(var i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=3').then(function(response){
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
        for(var i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=6').then(function(response){
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
        for(var i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=7').then(function(response){
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
        for(var i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=8').then(function(response){
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

<article id="fetchContent6" name="f"></article>

<script>
    function toggleFetchContent6() {
        var fetchContent = document.getElementById('fetchContent6');
        for(var i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=9').then(function(response){
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

<article id="fetchContent7" name="f"></article>

<script>
    function toggleFetchContent7() {
        var fetchContent = document.getElementById('fetchContent7');
        for(var i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=10').then(function(response){
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

<article id="fetchContent8" name="f"></article>

<script>
    function toggleFetchContent8() {
    	console.log("인천");
        var fetchContent = document.getElementById('fetchContent8');
        for(int i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=11').then(function(response){
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

<article id="fetchContent9" name="f"></article>

<script>
    function toggleFetchContent9() {
        var fetchContent = document.getElementById('fetchContent9');
        for(var i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=12').then(function(response){
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

<article id="fetchContent10" name="f"></article>

<script>
    function toggleFetchContent10() {
        var fetchContent = document.getElementById('fetchContent10');
        for(var i = 0; i < 10; i++){
    		var f = document.getElementsByName("f")[i];
    		if(f.innerHTML != ''){
    			f.innerHTML = '';
    		}
    	}
        if (fetchContent.innerHTML === '') {
            // Fetch 내용을 열기
            fetch('tideinfo?port_no=13').then(function(response){
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
    <style>
        .boxgray {
            background-color: #F3F3F3;
            padding: 20px;
            border-radius: 10px;
            border: 2px solid #CCCCCC;
            color: #333333;
            font-size: 16px;
            line-height: 1.5;
            text-align: left;
            width: 80%;
            margin: 0 auto;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
    </style>


    <div class="boxgray">
        <p>
            조석표는각지역에대해날짜별고조(만조)와저조(간조)의시간및조위를미리예측하여나타낸표이며사용방업으로,
지역.년도,월을선택한후그날짜에대한고조및저조의시간과조위를확인하면됩니다. 
<br><br>
고조는물이가장많이들어오는때이며,고조시간으로부터물을빠져나가게되고저조는물이가장많이빠진때이며, 저조시간으로부터물이다시들어오는때입니다.조위의단위는혼돈을방지하기위해센티미터(cm)로표기하며,
시간은24시간제를사용하였습니다.
<br><br>
위그림의2일을예로들면
<br><br>
15시00분에저조(간조)가80cm이고물이다빠졌을때의시각과조위를표시합니다.
<br><br>
21시25분에고조스(만조)는328cm이고물이다들어왔을때의시각과조위를표시합니다. 저조에서만조간격은대략6시간12분정도입니다.조위의기준면은그항만의약최저저조면으로
국립해양조사원에서간행하는해도의기본수준면과일치합니다.
        </p>
    </div>
<br><br>
    	 



    <style>
        .arrow-box {
            position: relative;
            background-color: transparent;
            padding: 20px;
            border-radius: 10px;
            border: none;
            color: #333333;
            font-size: 16px;
            line-height: 1.5;
            text-align: center;
            width: 80%;
            margin: 0 auto;
        }

        .arrow-box::before {
            content: "";
            position: absolute;
            top: 50%;
            right: 100%;
            margin-top: -10px;
            border-width: 10px;
            border-style: solid;
            border-color: transparent transparent transparent #F3F3F3;
        }
    </style>
    
    <div class="arrow-box">
        <p>
            조석자동응답시스템(ARS):1588-9822
        </p>
    </div>


    	 
    	 
    	 
 <%@ include file="/WEB-INF/views/layout/footer.jsp" %>