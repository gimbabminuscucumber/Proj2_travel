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
                            <p>섬여행준비</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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

    .styled-table td.title {
        font-weight: bold;
    }

    .styled-table td.content {
        color: #888;
    }
</style>

<br>
<style>
    .image-with-heading {
        display: flex;
        align-items: center;
    }

    .image-with-heading img {
        width: 250px; /* 이미지 크기 조정 */
        margin-right: 100px; /* 이미지와 제목 사이 간격 조정 */
    }

    .image-with-heading h2 {
        font-size: 30px; /* 제목 글꼴 크기 조정 */
        margin: 0; /* 제목 위아래 여백 제거 */
    }
</style>

<div class="image-with-heading">
    <img src="${pageContext.request.contextPath}/resources/upload/materials/travel.png" alt="">
    <h2>여행 가기 전 준비사항</h2>
</div>

<br>

<div align="center">
    <table class="styled-table">
        <c:forEach var="vo" items="${list}">
            <tr>
                <td class="title">${vo.infobrd_title}</td>
            </tr>
            <tr>
                <td class="content">${vo.infobrd_content}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<br><br>

 <%@ include file="/WEB-INF/views/layout/footer.jsp" %>	