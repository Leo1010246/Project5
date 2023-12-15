<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.movie.MovieDAO, com.example.movie.MovieVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<style>
		.filebox input[type="file"] {
			position: absolute;
			width: 0;
			height: 0;
			padding: 0;
			overflow: hidden;
			border: 0;
		}
	</style>
</head>
<body class="bg-light">
<div class="container">
	<div class="py-5 text-center">
		<img class="d-block mx-auto mb-4" src="../../img/logo.svg" alt="" width="72" height="72">
		<h2>영화수정</h2>
	</div>
</div>

<div class="row justify-content-md-center">
	<div class="col-md-auto">
		<h4 class="mb-3">영화 정보 입력</h4>
		<form action="../editok" method="post" enctype="multipart/form-data">
			<table id="edit">

				<div class="mb-3">
					<label for="upload-name">포스터</label><span class="text-muted">(Optional)</span></label>
					<div class="filebox">
						<input class="form-control mb-2 upload-name" id="upload-name" name="poster" value="첨부파일" placeholder="첨부파일" readonly>
						<label class="btn btn-outline-primary btn-sm btn-block" for="poster">포스터 업로드</label>
						<input type="file" name="poster" id="poster" value="${movieVO.getPoster()}">
					</div>
				</div>

				<div class="mb-3">
					<label for="title">영화제목</label>
					<input type="text" class="form-control" id="title" name="title" value="${movieVO.getTitle()}" required>
				</div>

				<div class="mb-3">
					<label for="reldate">개봉일</label>
					<div class="input-group">
						<input type="date" class="form-control" id="reldate" name="reldate" value="${movieVO.getReldate()}" required>
					</div>
				</div>

				<div class="mb-3">
					<label for="genre">영화장르</label>
					<input type="text" class="form-control" id="genre" name="genre" value="${movieVO.getGenre()}" required>
				</div>

				<div class="mb-3">
					<label for="director">영화감독</label>
					<input type="text" class="form-control" id="director" name="director" value="${movieVO.getDirector()}" required>
				</div>

				<div class="mb-3">
					<label for="actors">주연배우</label>
					<input type="text" class="form-control" id="actors" name="actors" value="${movieVO.getActors()}" required>
				</div>

				<div class="mb-3">
					<label for="story">줄거리</label>
					<textarea class="form-control" cols="50" rows="5" id="story" name="story" required>${movieVO.getStory()}</textarea>
				</div>

				<label for="rating">평점 선택</label>
					<select id="rating" class="form-control" name="rating" required>
						<option value="${movieVO.getRating()}" selected disabled >${movieVO.getRating()}점</option>
						<option value="1" >1점</option>
						<option value="2" >2점</option>
						<option value="3" >3점</option>
						<option value="4" >4점</option>
						<option value="5" >5점</option>
					</select>
				<hr class="mb-4">
			</table>
			<input class="btn btn-primary btn-lg btn-block" type="submit" value="수정하기"/>
			<input class="btn btn-secondary btn-lg btn-block" type="button" value="취소하기" onclick="history.back()"/>
		</form>
	</div>
</div>

<footer class="my-5 pt-5 text-muted text-center text-small">
	<p class="mb-1">&copy; 2023-2 실전프로젝트1</p>
	<ul class="list-inline">
		<li class="list-inline-item"><a href="#">Back to top</a></li>
	</ul>
</footer>

<script>
	document.getElementById('input-file').addEventListener('change', function() {
		var fullPath = document.getElementById('input-file').value;
		if (fullPath) {
			var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
			var filename = fullPath.substring(startIndex);
			if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
				filename = filename.substring(1);
			}
			document.getElementById('upload-name').value = filename;
		}
	});
</script>

</body>
</html>