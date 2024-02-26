<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

 
  <style type="text/css">
	.main_image {
    position: relative;
  }
  .main_image_text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate( -50%, -50% );
    color: white;
  }
  .main {
	width: 800px;
	min-height: 400px;
	padding-top: 15px;
}
.ckid {
	float: left;
}

.ckid_text {
	font-size: 10px;
}


/*cat34*/
.slider{
    width: 640px;
    height: 480px;
    position: relative;
    margin: 0 auto;
    overflow: hidden; /* 현재 슬라이드 오른쪽에 위치한 나머지 슬라이드 들이 보이지 않도록 가림 */
}

.slider input[type=radio]{
    display: none;
}

.slider ul.imgs{
    padding: 0;
    margin: 0;
    list-style: none;    
}
.slider ul.imgs li{
    position: absolute;
    left: 640px;
    transition-delay: 1s;

    padding: 0;
    margin: 0;
}
  
  
</style>