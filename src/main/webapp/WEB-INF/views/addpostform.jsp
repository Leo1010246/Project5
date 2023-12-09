<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
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

<h1>Add New Post</h1>

<form action="addok" method="post">
    <table id="edit">
        <tr><td>Poster:</td><td><input type="text" name="poster"/></td></tr>
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Reldate:</td><td><input type="text" name="reldate"/></td></tr>
        <tr><td>Genre:</td><td><input type="text" name="genre"/></td></tr>
        <tr><td>Director:</td><td><input type="text" name="director"/></td></tr>
        <tr><td>Actors:</td><td><input type="text" name="actors"/></td></tr>
        <tr><td>Story:</td><td><input type="text" name="story"/></td></tr>
        <tr><td>Rating:</td><td><input type="text" name="rating"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">추가하기</button>
</form>

</body>
</html>