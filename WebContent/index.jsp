<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="db.ConnectDB"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="ko" dir="ltr">
<%-- CSS --%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/default.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/qna.css">
<link rel="stylesheet" href="css/animation.css">
<link rel="stylesheet" href="css/result.css">


<%-- JS --%>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="PandaCoding">
<meta name="keywords" content="나에게 해줄 명대사 팩폭 성향은?!!">
<meta name="description" content="나에게 해줄 명대사 팩폭 성향은?!!">

<!-- sns share -->
<meta property="og:url" content="wowflee.좋아요.kr" />
<meta property="og:title" content="나에게 해줄 명대사 팩폭 성향은?!!" />
<meta property="og:type" content="website" />
<meta property="og:image" content="http://www.wowflee.com/image/main.png" />
<meta property="og:description" content="성향테스트하고 선물받자!!" />

<!--favicon-->
<link rel="shortcut icon" href="image/favicon.ico">
<link rel="apple-touch-icon-precomposed" href="image/favicon.ico" />
<%-- <jsp:include page="script.jsp" flush="false"></jsp:include> --%>

<title>명대사로 보는 팩폭 성향테스트</title>

<script>
	Kakao.init("b030c3ea411f34ca5103934037a4a7a5");
	Kakao.isInitialized();
</script>
</head>
<body>
	<div class="container">
		<section id="main" class="mx-auto my-5 py-5 px-3">
			<!--  <h1>명대사로 보는 팩폭 성향테스트</h1> -->
			<div class="col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="./image/main.png" alt="mainImage" class="img-fluid">
			</div>
			<p>
				<br>나에게 해줄 명대사 팩폭 성향은?!!<br>
			</p>
			<button type="button" class="btn btn-outline-danger mt-3"
				onclick="js:begin()">시작하기</button>
		</section>
		<section id="qna">
			<div class="status mx-auto mt-5">
				<div class="statusBar"></div>
			</div>
			<div class="qBox my-5 py-3 mx-auto"></div>
			<div class="answerBox"></div>

		</section>
		<section id="result" class="mx-auto my-5 py-5 px-3">
			<h1>당신의 결과는?!</h1>
			<div class="resultname"></div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto"></div>
			<div class="resultDesc">
				<br>
			</div>

			<button type="button" class="kakao mt-3 py-2 px-3"
				onclick="js:setShare()">fgf</button>
			<button type="button" class="kakao mt-3 py-2 px-3" onclick="">
				<a href="../index.jsp" class="info">fgdfg
			</button>
		</section>
		<script src="js/data.js" charset="utf-8"></script>
		<script src="js/start.js" charset="utf-8"></script>
		<script src="js/share.js" charset="utf-8"></script>
	</div>
</body>

</html>
