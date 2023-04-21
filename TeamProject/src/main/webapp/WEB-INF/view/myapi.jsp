<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
@font-face {
    font-family: 'GangwonEdu_OTFBoldA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

 *{font-family: 'GangwonEdu_OTFBoldA', sans-serif;}
</style>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
    <h1>API 호출 예제</h1>
    <button onclick="callApi()">API 호출</button>
    <div id="result"></div>

    <script>
        function callApi() {
            // API 호출
            $.ajax({
                url: "myapi", // 호출할 API의 URL
                type: "GET",
                success: function(data) {
                    // API 호출 성공 시 결과를 화면에 표시
                    $("#result").text(data);
                },
                error: function(error) {
                    // API 호출 실패 시 에러 메시지를 화면에 표시
                    $("#result").text("API 호출 실패: " + error.responseText);
                }
            });
        }
    </script>
</body>
</html>