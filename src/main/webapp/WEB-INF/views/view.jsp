<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.movie.MovieDAO, com.example.movie.MovieVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>영화 상세</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<header>
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container d-flex justify-content-between">
            <a href="#" class="navbar-brand d-flex align-items-center">
                <img src="../../img/logo.svg" width="40" height="40" style="margin-right: 10px;">
                <strong>영화상세</strong>
            </a>
        </div>
    </div>
</header>

<main role="main">
    <div class="album py-5 bg-light">
        <div class="container">
            <div class="card mb-3">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img class="img-fluid rounded-start" src="../../upload/${u.poster}" alt="..." >
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <p class="card-text">제목: ${u.title}</p>
                            <p class="card-text">개봉일: ${u.reldate}</p>
                            <p class="card-text">장르: ${u.genre}</p>
                            <p class="card-text">감독: ${u.director}</p>
                            <p class="card-text">배우: ${u.actors}</p>
                            <p class="card-text">줄거리: ${u.story}</p>
                            <p class="card-text">평점: ${u.rating}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>
