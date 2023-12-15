<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.example.movie.MovieDAO, com.example.movie.MovieVO"%>
<%--<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>--%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>영화 상세</title>
    <link rel="stylesheet" href="../../resourses/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
    <style>
        /* 모달 스타일 */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            max-width: 600px; /* 최대 너비 설정 */
            width: 100%; /* 가득 차도록 설정 */
        }

        /* 닫기 버튼 스타일 */
        .close {
            cursor: pointer;
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>

<%
    // 전달된 파라미터 가져오기
    String uSeq = request.getParameter("uSeq");
    String uTitle = request.getParameter("uTitle");
    String uPoster = request.getParameter("uPoster");
    String uReldate = request.getParameter("uReldate");
    String uGenre = request.getParameter("uGenre");
    String uDirector = request.getParameter("uDirector");
    String uActors = request.getParameter("uActors");
    String uStory = request.getParameter("uStory");
    String uRating = request.getParameter("uRating");
%>

<div id="modal" class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">영화 상세</h5>
                <button type="button" onclick="location.href='../login/logout'">로그아웃</button>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div>
                    <div class="titleBox">
                        <h3 id="title1"></h3>
                    </div>
                    <div class="imgBox">
                        <img src="" id="poster" />
                    </div>
                    <div class="textBox">
                        <div>
                            <p>제목: </p><p id="title2"></p>
                        </div>
                        <div>
                            <p>개봉일: </p><p id="reldate"></p>
                        </div>
                        <div>
                            <p>장르: </p><p id="genre"></p>
                        </div>
                        <div>
                            <p>감독: </p><p id="director"></p>
                        </div>
                        <div>
                            <p>배우: </p><p id="actors"></p>
                        </div>
                        <div>
                            <p>줄거리: </p><p id="story"></p>
                        </div>
                        <div>
                            <p>평점: </p><p id="rating"></p>
                        </div>
                    </div>
                    <div class="buttonBox">
                        <br/><button type="button" onclick="location.href='add'">영화추가</button>
                        <br/><button type="button" onclick="location.href='editform/<%= uSeq %>'">영화편집</button>
                        <br/><button type="button" onclick="location.href='javascript:delete_ok(\'<%= uSeq %>\')'">영화삭제</button>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<script>
    // 모달 열기
    function openModal(seq, title, poster, reldate, genre, director, actors, story, rating) {
        document.getElementById("modal").style.display = "flex";
        document.getElementById("seq1").innerText = seq;
        document.getElementById("seq2").innerText = seq;
        document.getElementById("title1").innerText = title;
        document.getElementById("title2").innerText = title;
        document.getElementById("poster").innerText = poster;
        document.getElementById("reldate").innerText = reldate;
        document.getElementById("genre").innerText = genre;
        document.getElementById("director").innerText = director;
        document.getElementById("actors").innerText = actors;
        document.getElementById("story").innerText = story;
        document.getElementById("rating").innerText = rating;
    }

    // 모달 닫기
    function closeModal() {
        document.getElementById("modal").style.display = "none";
    }

    // 모달 외부 클릭 시 닫기
    window.onclick = function(event) {
        var modal = document.getElementById("modal");
        if (event.target === modal) {
            modal.style.display = "none";
        }
    };
</script>

</body>
</html>
