<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
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

<%--<form:form modelAttribute="boardVO" method="POST" action="../editok">--%>
<%--	<form:hidden path="seq"/>--%>
<%--	<table id="edit">--%>
<%--		<tr><td>Poster:</td><td><form:input path="poster" /></td></tr>--%>
<%--		<tr><td>Title:</td><td><form:input path="title" /></td></tr>--%>
<%--		<tr><td>Reldate:</td><td><form:input path="reldate" /></td></tr>--%>
<%--		<tr><td>Genre:</td><td><form:input path="genre" /></td></tr>--%>
<%--		<tr><td>Director:</td><td><form:input path="director" /></td></tr>--%>
<%--		<tr><td>Actors:</td><td><form:input path="actors" /></td></tr>--%>
<%--		<tr><td>Story:</td><td><form:input path="story" /></td></tr>--%>
<%--        <tr><td>Rating:</td><td><form:input path="rating" /></td></tr>--%>
<%--	</table>--%>
<%--	<input type="submit" value="수정하기"/>--%>
<%--	<input type="button" value="취소하기" onclick="history.back()"/>--%>
<%--</form:form>--%>

<form method="POST" action="../editok">
	<table id="edit">
		<tr><td>ID:</td><td><input type="text" name="userId" value="${u.userId}"/></td></tr>
		<tr><td>Name:</td><td><input type="text" name="userName" value="${u.userName}"/></td></tr>
		<tr><td>Password:</td><td><input type="text" name="password" value="${u.password}"/></td></tr>
		<tr><td>Email:</td><td><input type="text" name="email" value="${u.email}"/></td></tr>
		<tr><td>BlogURL:</td><td><textarea cols="50" rows="3" name="blogUrl">${u.blogUrl}</textarea></td></tr>
		<tr><td>Photo:</td><td><input type="text" name="photo" value="${u.photo}"/></td></tr>
		<tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail">${u.detail}</textarea></td></tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>
</form>

</body>
</html>