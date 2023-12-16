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
</head>
<body>


<div>
    <header>
        <div class="navbar navbar-dark bg-dark shadow-sm">
            <div class="container d-flex justify-content-between">
                <nav>
                    <h3 style="color:white"><a onclick="history.back()">영화 상세</a></h3>
                </nav>
<%--                <nav class="d-grid gap-2 d-md-flex justify-content-md-end">--%>
<%--                    <a class="btn btn-outline-primary" onclick="history.back()">돌아가기</a>--%>
<%--                    <a class="btn btn-outline-primary" onclick="location.href='../../login/logout'">로그아웃</a>--%>
<%--                </nav>--%>
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
                        <img src="../../upload/${u.poster}" width="420" height="594" class="me-2"/>
                    </div>
                    <div><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></div>
                    <div class="textBox">
                        <div>
                            <textarea readonly style="border: none" cols="60" rows="1">제목: ${u.title}</textarea>
                        </div>
                        <div>
                            <textarea readonly style="border: none" cols="60" rows="1">개봉일: ${u.reldate}</textarea>
                        </div>
                        <div>
                            <textarea readonly style="border: none" cols="60" rows="1">장르: ${u.genre}</textarea>
                        </div>
                        <div>
                            <textarea readonly style="border: none" cols="60" rows="1">감독: ${u.director}</textarea>
                        </div>
                        <div>
                            <textarea readonly style="border: none" cols="60" rows="1">배우: ${u.actors}</textarea>
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
                                <br/><button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='../editform/${u.seq}'">영화편집</button>
<%--                                <br/><button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='javascript:../delete_ok(\'${u.seq}\')'">영화삭제</button>--%>
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

</body>
</html>
