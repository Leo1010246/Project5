<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gram
  Date: 2023-12-09
  Time: 오후 3:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@page import="com.example.movie.MovieDAO, com.example.movie.MovieVO"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset=UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../resourses/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="../../resourses/css/style.css">
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
<%--    <style>--%>
<%--        /* 모달 스타일 */--%>
<%--        .modal {--%>
<%--            display: none;--%>
<%--            position: fixed;--%>
<%--            top: 0;--%>
<%--            left: 0;--%>
<%--            width: 100%;--%>
<%--            height: 100%;--%>
<%--            background-color: rgba(0, 0, 0, 0.5);--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--        }--%>

<%--        .modal-content {--%>
<%--            background-color: #fff;--%>
<%--            padding: 20px;--%>
<%--            border-radius: 5px;--%>
<%--            max-width: 600px; /* 최대 너비 설정 */--%>
<%--            width: 100%; /* 가득 차도록 설정 */--%>
<%--        }--%>

<%--        /* 닫기 버튼 스타일 */--%>
<%--        .close {--%>
<%--            cursor: pointer;--%>
<%--            position: absolute;--%>
<%--            top: 10px;--%>
<%--            right: 10px;--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body>

<%--<c:forEach items="${list}" var="u">--%>

<div>
    <header>
        <div class="navbar navbar-dark bg-dark shadow-sm">
            <div class="container d-flex justify-content-between">
                <nav>
                    <h3 style="color:white"><a onclick="history.back()">영화 상세</a></h3>
                </nav>
                <nav class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <button type="button" onclick="history.back()">돌아가기</button>
                    <button type="button" onclick="location.href='../login/logout'">로그아웃</button>
                </nav>
            </div>
        </div>
    </header>
    <main role="main">
        <div class="album py-5 bg-light">
            <div class="container">
                <div class="titleBox">
                    <h3>${u.title}</h3>
                </div><br>
                <div class="row mb-4 shadow-sm">

                    <div class="imgBox">
<%--                        <img src="${u.poster}" />--%>
                        <img src="../img/xmas.jpg" width="600" height="700" class="me-2"/>
                    </div>
                    <div><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></div>
                    <div class="textBox">
                        <div>
                            <p>제목: ${u.title}</p>
                        </div>
                        <div>
                            <p>개봉일: ${u.reldate}</p>
                        </div>
                        <div>
                            <p>장르: ${u.genre}</p>
                        </div>
                        <div>
                            <p>감독: ${u.director}</p>
                        </div>
                        <div>
                            <p>배우: ${u.actors}</p>
                        </div>
                        <div>
                            <textarea readonly style="border: none" cols="60" rows="10">줄거리: ${u.story}</textarea>
                        </div>
                        <div>
                            <p>평점: ${u.rating}</p>
                        </div>
                        <div class="d-flex justify-content-between align-items-center wrap">
                            <div class="btn-group">
<%--                                <br/><button type="button" onclick="location.href='add'">영화추가</button>--%>
                                <br/><button type="button" onclick="location.href='editform/${u.seq}'">영화편집</button>
                                <br/><button type="button" onclick="location.href='javascript:delete_ok(\'${u.seq}\')'">영화삭제</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
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
</div>
<%--</c:forEach>--%>

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
<%--<br/><button type="button" onclick="location.href='editform/${u.seq}'">영화편집</button>--%>
<%--<br/><button type="button" onclick="location.href='javascript:delete_ok('${u.seq}')'">영화삭제</button>--%>
<%--<br/><button type="button" onclick="location.href='../login/logout'">로그아웃</button>--%>

<%--<%--%>
<%--    // 전달된 파라미터 가져오기--%>
<%--    String uSeq = request.getParameter("uSeq");--%>
<%--    String uTitle = request.getParameter("uTitle");--%>
<%--    String uPoster = request.getParameter("uPoster");--%>
<%--    String uReldate = request.getParameter("uReldate");--%>
<%--    String uGenre = request.getParameter("uGenre");--%>
<%--    String uDirector = request.getParameter("uDirector");--%>
<%--    String uActors = request.getParameter("uActors");--%>
<%--    String uStory = request.getParameter("uStory");--%>
<%--    String uRating = request.getParameter("uRating");--%>
<%--%>--%>

<%--<div id="modal" class="modal" tabindex="-1">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title">영화 상세</h5>--%>
<%--                <button type="button" onclick="location.href='../login/logout'">로그아웃</button>--%>
<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <div>--%>
<%--                    <div class="titleBox">--%>
<%--                        <h3 id="title1"></h3>--%>
<%--                    </div>--%>
<%--                    <div class="imgBox">--%>
<%--                        <img src="" id="poster" />--%>
<%--                    </div>--%>
<%--                    <div class="textBox">--%>
<%--                        <div>--%>
<%--                            <p>제목: </p><p id="title2"></p>--%>
<%--                        </div>--%>
<%--                        <div>--%>
<%--                            <p>개봉일: </p><p id="reldate"></p>--%>
<%--                        </div>--%>
<%--                        <div>--%>
<%--                            <p>장르: </p><p id="genre"></p>--%>
<%--                        </div>--%>
<%--                        <div>--%>
<%--                            <p>감독: </p><p id="director"></p>--%>
<%--                        </div>--%>
<%--                        <div>--%>
<%--                            <p>배우: </p><p id="actors"></p>--%>
<%--                        </div>--%>
<%--                        <div>--%>
<%--                            <p>줄거리: </p><p id="story"></p>--%>
<%--                        </div>--%>
<%--                        <div>--%>
<%--                            <p>평점: </p><p id="rating"></p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="buttonBox">--%>
<%--                        <br/><button type="button" onclick="location.href='add'">영화추가</button>--%>
<%--                        <br/><button type="button" onclick="location.href='editform/<%= uSeq %>'">영화편집</button>--%>
<%--                        <br/><button type="button" onclick="location.href='javascript:delete_ok(\'<%= uSeq %>\')'">영화삭제</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
<%--                <button type="button" class="btn btn-primary">Save changes</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<script>--%>
<%--    // 모달 열기--%>
<%--    function openModal(seq, title, poster, reldate, genre, director, actors, story, rating) {--%>
<%--        document.getElementById("modal").style.display = "flex";--%>
<%--        document.getElementById("seq1").innerText = seq;--%>
<%--        document.getElementById("seq2").innerText = seq;--%>
<%--        document.getElementById("title1").innerText = title;--%>
<%--        document.getElementById("title2").innerText = title;--%>
<%--        document.getElementById("poster").innerText = poster;--%>
<%--        document.getElementById("reldate").innerText = reldate;--%>
<%--        document.getElementById("genre").innerText = genre;--%>
<%--        document.getElementById("director").innerText = director;--%>
<%--        document.getElementById("actors").innerText = actors;--%>
<%--        document.getElementById("story").innerText = story;--%>
<%--        document.getElementById("rating").innerText = rating;--%>
<%--    }--%>

<%--    // 모달 닫기--%>
<%--    function closeModal() {--%>
<%--        document.getElementById("modal").style.display = "none";--%>
<%--    }--%>

<%--    // 모달 외부 클릭 시 닫기--%>
<%--    window.onclick = function(event) {--%>
<%--        var modal = document.getElementById("modal");--%>
<%--        if (event.target === modal) {--%>
<%--            modal.style.display = "none";--%>
<%--        }--%>
<%--    };--%>
<%--</script>--%>

</body>
</html>
