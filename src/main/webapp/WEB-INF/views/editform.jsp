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
	<link rel="stylesheet" href="${path}/resourses/css/style.css">
	<style>
		#edit {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#edit td, #edit th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}
		#edit tr:nth-child(even){background-color: #f2f2f2;}
		#edit tr:hover {background-color: #ddd;}
		#edit th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #006bb3;
			color: white;
		}
	</style>
</head>
<body>

<h1>Edit Form</h1>

<form:form modelAttribute="movieVO"
		   method="POST"
		   action="../editok/${seq}">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Poster:</td><td><form:input path="poster" /></td></tr>

		<div class="mb-3">
			<label for="title">영화제목</label>
			<form:input path="title" />
		</div>

		<tr><td>Reldate:</td><td><form:input path="reldate" /></td></tr>
		<tr><td>Genre:</td><td><form:input path="genre" /></td></tr>
		<tr><td>Director:</td><td><form:input path="director" /></td></tr>
		<tr><td>Actors:</td><td><form:input path="actors" /></td></tr>
		<tr><td>Story:</td><td><form:input path="story" /></td></tr>

		<div class="mb-3">
			<label for="rating">평점 선택</label>
				<form:select path="rating">
					<form:option value="${null}" label="평점을 선택하세요."/>
					<form:option value="1" label="1점" />
					<form:option value="2" label="2점" />
					<form:option value="3" label="3점" />
					<form:option value="4" label="4점" />
					<form:option value="5" label="5점" />
				</form:select>
		</div>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>