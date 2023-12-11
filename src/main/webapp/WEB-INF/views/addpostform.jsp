<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영화추가</title>
    <link rel="stylesheet" href="${path}/resourses/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body class="bg-light">
    <div class="container">
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="../img/logo.svg" alt="" width="72" height="72">
            <h2>영화추가</h2>
        </div>

    <div class="row justify-content-md-center">
        <div class="col-md-auto">
            <h4 class="mb-3">영화 정보 입력</h4>
            <form action="addok" method="post">
                <table id="edit">

                    <div class="mb-3">
                        <label for="poster">포스터</label><span class="text-muted">(Optional)</span></label>
                        <input type="text" class="form-control mb-2" id="poster" name="poster">
                        <button class="btn btn-outline-primary btn-sm btn-block">포스터 업로드</button>
                    </div>

                    <div class="mb-3">
                        <label for="title">영화제목</label>
                        <div class="invalid-feedback">영화제목을 입력하세요.</div>
                        <input type="text" class="form-control" id="title" name="title" required>
                    </div>

                    <div class="mb-3">
                        <label for="reldate">개봉일</label>
                        <div class="input-group">
                            <input type="date" class="form-control" id="reldate" name="reldate" required>
                            <div class="invalid-feedback" style="width: 100%;">예약 날짜를 선택하세요.</div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="genre">영화장르</label>
                        <input type="text" class="form-control" id="genre" name="genre" required>
                    </div>

                    <div class="mb-3">
                        <label for="director">영화감독</label>
                        <input type="text" class="form-control" id="director" name="director" required>
                    </div>

                    <div class="mb-3">
                        <label for="actors">주연배우</label>
                        <input type="text" class="form-control" id="actors" name="actors" required>
                    </div>

                    <div class="mb-3">
                        <label for="story">줄거리</label>
                        <textarea class="form-control" cols="50" rows="5" id="story" name="story" required></textarea>
                    </div>

<%--                    <div class="mb-3">--%>
<%--                        <label for="rating">평점</label>--%>
<%--                        <input type="range" class="form-control" id="rating" name="rating" min="1" max="5" required>--%>
<%--                    </div>--%>

                    <div class="mb-3">
                        <label for="rating">평점 선택</label>
                        <select id="rating" class="form-control" name="rating" required>
                            <option value="" selected disabled>평점을 선택하세요.</option>
                            <option value="1">1점</option>
                            <option value="2">2점</option>
                            <option value="3">3점</option>
                            <option value="4">4점</option>
                            <option value="5">5점</option>
                        </select>
                    </div>

                    <hr class="mb-4">
                    <button class="btn btn-primary btn-lg btn-block" type="submit">추가하기</button>
                    <button class="btn btn-secondary btn-lg btn-block" type="button" onclick="location.href='list'">목록보기</button>
                </table>
            </form>
        </div>
    </div>
</form>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2023-2 실전프로젝트1</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Back to top</a></li>
        </ul>
    </footer>
</body>
</html>