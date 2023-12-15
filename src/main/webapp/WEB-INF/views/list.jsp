<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gram
  Date: 2023-11-28
  Time: 오후 4:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>영화 게시판</title>
    <link rel="stylesheet" href="../../resourses/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
    <style>
        /* 스타일은 필요에 따라 조정 가능 */
        #popup-container {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 800px; /* 원하는 크기로 조정하세요 */
            height: 600px; /* 원하는 크기로 조정하세요 */
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            z-index: 1000;
        }
    </style>
</head>
<body>
    <header>
        <div class="navbar navbar-dark bg-dark shadow-sm">
            <div class="container d-flex justify-content-between">
                <a href="#" class="navbar-brand d-flex align-items-center">
                    <img src="../img/logo.svg" width="40" height="40" class="me-2">
                    <strong>영화게시판</strong>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                        <a class="btn btn-primary me-md-2" onclick="location.href='add'">영화추가</a>
                        <span></span>
                        <a class="btn btn-outline-primary" onclick="location.href='../login/logout'">로그아웃</a>
                    </div>
                </a>
            </div>
        </div>
    </header>
<main role="main">
    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row">
                <c:forEach items="${list}" var="u">
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <img class="bd-placeholder-img card-img-top" src="../img/sea.jpg" alt="..."><%--${u.poster}--%>
                            <div class="card-body">
                                <p class="card-text">제목: ${u.title}</p>
                                <p class="card-text">개봉일: ${u.reldate}</p>
                                <p class="card-text">장르: ${u.genre}</p>
                                <p class="card-text">감독: ${u.director}</p>
                                <p class="card-text">배우: ${u.actors}</p>
                                <p class="card-text">평점: ${u.rating}</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
<%--                                        <button type="button" class="btn btn-sm btn-outline-secondary view-button"><a href="view/${u.seq}">View</a></button>--%>
                                        <button type="button" class="btn btn-sm btn-outline-secondary view-button" onclick="openPopup('view/${u.seq}')">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary"><a href="editform/${u.seq}">Edit</a></button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary delete-button" onclick="delete_ok('${u.seq}')">Delete</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 팝업 컨테이너 -->
                        <div id="popup-container">
                            <!-- 팝업 내용이 비어있는 상태 -->
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</main>

    <script>
        // 팝업 열기
        function openPopup(url) {
            // 팝업 창 열기
            var popup = window.open(url, 'Popup', `width=800,height=600,left=400,top=200`);

            // 팝업 컨테이너에 내용이 비어있는 경우 팝업 창을 이동
            if (document.getElementById('popup-container').innerHTML.trim() === '') {
                document.getElementById('popup-container').innerHTML = 'Loading...';
                setTimeout(function () {
                    document.getElementById('popup-container').innerHTML = '';
                }, 3000);  // 예시로 3초 후에 내용을 비우는데, 실제로는 팝업 내용을 비우는 방법을 사용하시면 됩니다.
            }
        }
    </script>

<footer class="text-muted">
    <div class="container">
        <br>
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>다른 영화를 찾고계시나요? <a href="https://www.netflix.com/kr/">Visit NETFLIX</a> or <a href="https://www.cgv.co.kr/">Visit CGV site</a>.</p>
        <br>
    </div>
</footer>
<div class="modal" id="myModal">
    <div class="modal-content">
        <span class="close" id="closeModal">&times;</span>
        <div id="modalContent"></div>
    </div>
</div>
<script src="script.js"></script>

<%--<h1>영화게시판</h1>--%>

<%--<img src="../img/sea.jpg" width="500" />--%>

<%--<table id="list" width="90%">--%>
<%--    <tr>--%>
<%--        <th>Seq</th>--%>
<%--        <th>Poster</th>--%>
<%--        <th>Title</th>--%>
<%--        <th>Reldate</th>--%>
<%--        <th>Genre</th>--%>
<%--        <th>Director</th>--%>
<%--        <th>Actors</th>--%>
<%--        <th>Story</th>--%>
<%--        <th>Rating</th>--%>
<%--        <th>Regdate</th>--%>
<%--        <th>Edit</th>--%>
<%--        <th>Delete</th>--%>
<%--    </tr>--%>
<%--    <c:forEach items="${list}" var="u">--%>
<%--        <tr>--%>
<%--            <td>${u.seq}</td>--%>
<%--            <td>${u.poster}</td>--%>
<%--            <td>${u.title}</td>--%>
<%--            <td>${u.reldate}</td>--%>
<%--            <td>${u.genre}</td>--%>
<%--            <td>${u.director}</td>--%>
<%--            <td>${u.actors}</td>--%>
<%--            <td>${u.story}</td>--%>
<%--            <td>${u.rating}</td>--%>
<%--            <td>${u.regdate}</td>--%>
<%--            <td><a href="editform/${u.seq}">Edit</a></td>--%>
<%--            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>
<%--<br/><button type="button" onclick="location.href='add'">영화추가</button>--%>
<%--<br/><button type="button" onclick="location.href='../login/logout'">로그아웃</button>--%>
</body>
</html>
