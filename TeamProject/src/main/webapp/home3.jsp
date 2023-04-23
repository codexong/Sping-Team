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
	<%@ include file="login_nav.jsp" %>

	<%@ include file="main_nav.jsp" %>
	
	<h1></h1>

	 <script>

      $.ajax({
    	type: 'GET',
        url: "http://www.culture.go.kr/openapi/rest/publicperformancedisplays/period?from=20101118&to=20101217&cPage=1&rows=10&place=&gpsxfrom=&gpsyfrom=&gpsxto=&gpsyto=&keyword=&sortStdr=1",
        data:{serviceKey: "dw13O1bisWHxtxSYLcTJ%2FRibQvxPCzAWvEyjdrGKbDm3bopoDo%2BdazvXqnMI5BGwLv0WrICm6oXohW2wd1o92A%3D%3D"},
        dataType: 'xml',
        success: function(data) {
          const outputDiv = document.getElementById('output');
          outputDiv.innerHTML = new XMLSerializer().serializeToString(data);
        },
        error: function(error) {
          console.error(error);
        }
      });
    </script>
    
		
	<%@ include file="footer.jsp" %>
</body>
</html>