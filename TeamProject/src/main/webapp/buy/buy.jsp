<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/930e9d87c4.js"></script>
<style type="text/css">
@font-face {
    font-family: 'GangwonEdu_OTFBoldA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

 *{font-family: 'GangwonEdu_OTFBoldA', sans-serif;}
.title{font-size: 30px; text-align:center; font-weight : bold;}

</style>
</head>
<body>
	<jsp:include page="/login_nav.jsp"/>
	<jsp:include page="/main_nav.jsp"/>
	
	<p class="title"> 티켓 구매 페이지 </p>


	  <div class="card mb-3" style="max-width: 540px;">
	    <div class="row g-0">
	      <div class="col-md-4">
	        <img src="..." class="img-fluid rounded-start" alt="...">
	      </div>
	      <div class="col-md-8">
	        <div class="card-body">
	          <h5 class="card-title">Card title</h5>
	          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
	          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	        </div>
	      </div>
	    </div>
	  </div>
	
	  <div class="card mb-3" style="max-width: 540px;">
	    <div class="row g-0">
	      <div class="col-md-12">
	        <div class="card-body">
	          <h5 class="card-title">Card title</h5>
	          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
	          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	        </div>
	      </div>
	    </div>
	  </div>

	<jsp:include page="/footer.jsp"/>
</body>
</html>