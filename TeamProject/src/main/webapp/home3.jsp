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
		    method: "GET",
		    url: "http://api.kcisa.kr/API_CNV_053/request",
		    data: {
				      
			    	serviceKey: "e18f8cb4-a3a9-460b-b6c9-1869590475ef"

		   		   },
		    headers: { Accept: "application/json"}
		  })
		    .done(function(msg) {
		      console.log(msg);
		      const items = msg.response.body.items.item;
		      const filteredItems = items.filter((item) => item.type === '전시');
		      console.log(filteredItems);
		      console.log(msg.response.body.items);
		      console.log(msg.response.body.items.item[0].title);
		      console.log(msg.response.body.items.item[0].sourceTitle);
		      $("h1").text(msg.response.body.items.item[0].title);
		   
		    })
		    .fail(function(jqXHR, textStatus, errorThrown) {
		      console.error("AJAX Request Failed: " + textStatus, errorThrown);
		    });
    </script>
	
	
	
		
	<%@ include file="footer.jsp" %>
</body>
</html>