<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="db.ConnectDB"%>
<%@ page import="java.util.*"%>
<%@ page import="db.datacontroller"%>

<!DOCTYPE html>
<html>
<%-- CSS --%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../css/default.css">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/qna.css">
<link rel="stylesheet" href="../css/animation.css">
<link rel="stylesheet" href="../css/result.css">


<%-- JS --%>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="PandaCoding">
<meta name="keywords" content="나에게 해줄 명대사 팩폭 성향은?!!">
<meta name="description" content="나에게 해줄 명대사 팩폭 성향은?!!">

<!-- sns share -->
<!-- <meta property="og:url" content="https://twelvelovetype.netlify.app" />
<meta property="og:title" content="나에게 해줄 명대사 팩폭 성향은?!!" />
<meta property="og:type" content="website" />
<meta property="og:image" content="image/share.png" />
<meta property="og:description" content="나에게 해줄 명대사 팩폭 성향은?!!" /> -->

<!--favicon-->
<link rel="shortcut icon" href="image/favicon.ico">
<link rel="apple-touch-icon-precomposed" href="image/favicon.ico" />
<%-- <jsp:include page="script.jsp" flush="false"></jsp:include> --%>

<title>명대사로 보는 팩폭 성향테스트</title>

<script>
	Kakao.init("Kakao.");
	Kakao.isInitialized();
</script>
</head>
<body>
	<div class="container">

		<section id="main" class="mx-auto my-5 py-5 px-3">
			<h1>당신의 결과는?</h1>
			<div class="resultname">
				<p>겉으로는 차가워보이지만 속은 매우 따뜻한 당신</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1356_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1356.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 엄청 조용한데 엠티나 다 같이 놀러 가면
				춤추고 노래하고 싶어요!!<br> 관종이지만 내성적이라 평소엔 티가 나지 않죠!<br> 감수성이 풍부해서
				혼자 생각할 시간이 꼭 필요해요..<br> 계획적인 거 좋아요! 일기도 안 밀리고 꾸준히 쓰는 나! <br>할
				일은 미리미리! 모든 사람에게 다정하고 친절한 인간 겉바속촉! <br>친하고 마음 맞는 사람이랑만 노는 거
				좋아해요! <br>섬세하고 예리하지만 가끔씩 나오는 허당미! <br>공감을 잘해서 상담 잘 해주는 데
				문제는 <br>상담해 주다가 상대의 기분에 너무 심하게 이입해요..<br> 나는 남들보다 좀 더 성숙하고
				조용한 사람입니다!<br> <br> <span class="half_HL">○ 조심해줘요!</span><br>
				나랑 친해도 무조건 지켜야 할 선이 존재해요! <br>신중한 완벽주의자라 행동하기 전 시뮬레이션 500번 돌리고
				실행! <br>스트레스를 받으면 자주 아파요.. 위쪽 질병을 달고 살죠... <br>예의 없는 사람이 이
				세상에서 제일 싫고 <br>나와 가치관이 맞지 않으면 극단적으로 선을 그어버립니다!<br> <br>
				<span class="half_HL">○ 이런 사람이랑 잘 맞아요!</span><br> 감정적인 공유가 깊을수록
				친해질 수 있어요! <br>다정다감하고 친절하지만 쉽게 마음을 열어주지 않는 나는! <br>서로의
				관심사가 잘 통하거나 대화가 잘 통하는 사람 좋아요! <br>이야기를 잘 들어주는 사람이 좋아요!<br>
			</div>
			<%
			String returns = "";
			String par1 = "", par2 = "";
			String data = "";
			String url = "";
			String uri = "";
			String urlstr = "";
			int p1, p2;
			if(request.getParameter("param")!=null){
				data = request.getParameter("param").toString();
				par1 = data.substring(0, 5);
				par2 = data.substring(5, data.length());
				p1 = Integer.parseInt(par1);
				p2 = Integer.parseInt(par2);
				p1 = (p1 - 126) / 3;
				p2 = p2 - 2715;
				data = String.valueOf(p1) + String.valueOf(p2);
				System.out.print(data);
				datacontroller dc = datacontroller.getInstance();
				dc.datachange(data);
				url = request.getRequestURL().toString();
				uri = request.getRequestURI().toString();
				urlstr = url.substring(0, url.indexOf(uri) + 1)+"/index.jsp";
			}
			%>

			<button type="button" class="kakao mt-3 py-2 px-3"
				style="margin-right: 30px" onclick="js:setShare()">내 결과 공유하기</button>
			<button type="button" class="kakao mt-3 py-2 px-3"
				onclick="js:moveto()">나도 해보기</button>
		</section>

		<jsp:include page="event.jsp" flush="false"></jsp:include>

		<script src="../js/share.js" charset="utf-8"></script>
		<script src="../js/data.js" charset="utf-8"></script>
	</div>
</body>
</html>
