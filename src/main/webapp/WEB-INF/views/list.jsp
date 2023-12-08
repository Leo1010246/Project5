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
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Title</title>
    <link rel="stylesheet" href="../../resourses/css/style.css">
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>
<body>

<h1>유저게시판</h1>

<img src="../img/sea.jpg" width="500" />

<table id="list" width="90%">
    <tr>
        <th>Sid</th>
        <th>ID</th>
        <th>Name</th>
        <th>Password</th>
        <th>Email</th>
        <th>BlogURL</th>
        <th>Photo</th>
        <th>Detail</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.sid}</td>
            <td>${u.userId}</td>
            <td>${u.userName}</td>
            <td>${u.password}</td>
            <td>${u.email}</td>
            <td>${u.blogUrl}</td>
            <td>${u.photo}</td>
            <td>${u.detail}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.sid}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.sid}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">유저추가</button>

</body>
</html>
