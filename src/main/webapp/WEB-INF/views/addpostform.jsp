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
        <tr><td>ID:</td><td><input type="text" name="userId"/></td></tr>
        <tr><td>Name:</td><td><input type="text" name="userName"/></td></tr>
        <tr><td>Password:</td><td><input type="text" name="password"/></td></tr>
        <tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
        <tr><td>BlogURL:</td><td><textarea cols="50" rows="3" name="blogUrl"></textarea></td></tr>
        <tr><td>Photo:</td><td><input type="text" name="photo"/></td></tr>
        <tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">추가하기</button>
</form>

</body>
</html>