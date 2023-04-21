<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>API 호출 예제</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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