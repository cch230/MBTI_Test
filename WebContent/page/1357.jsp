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
	Kakao.init("b030c3ea411f34ca5103934037a4a7a5");
	Kakao.isInitialized();
</script>
</head>
<body>
	<div class="container">

		<section id="main" class="mx-auto my-5 py-5 px-3">
			<h1>당신의 결과는?</h1>
			<div class="resultname">
				<p>잡생각 많은 귀차니즘, 하지만 열정이 불타오르는 완벽주의자</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1357_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1357.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 완벽하지 못할거라면 아예 시작도 안해요!
				<br>하지만 생각한 거 실천하는데 매우 오래 걸립니다! 다만 시작은 창대하나 끝은 흐지부지...<br>
				처음 보는 사람한테 말 잘거는데 조직 생활할 땐 낯 많이 가려요!<br> 뒷자리 사수 필수! <br>남
				한테 의지하는 것도 의지하기도 싫어서 혼자 해결 하려고 합니다! <br>자기애가 강하지만 자존감이 낮고 가끔은
				너무 우울해요..<br> 잡생각이 많고 깨지기 쉬운 유리 멘탈의 소유자, <br>잔소리는 귀찮아서 안하고
				싸우는 것도 싫어서 차라리 내가 희생해요! <br>남들에게 별거 아닌 일에도 혼자 감동 받고 충격 받는...! <br>피터팬
				증후근! 논리 정연하게 말하고 싶은데 마음만 앞서 말하다 말 더듬이가 되거나 지나치게 느려져요!<br> <br>
				<span class="half_HL">○ 조심해줘요!</span><br> 내 개인 적인 얘기 남들한테 하는 거
				싫어하니까 물어보지 말아줘요.<br> 외로운 건 싫어요! 남들한테 폐 끼치는 거 제일 싫어요!<br>
				예민보스라 백번 잘해줘도 한번 반응 안해주면 내가 뭐 잘못했나 생각해요.<br> 스트레스 받으면 지금까지 있었던
				안좋은 일들이 생각나면서 곪아가요..<br> <br> <span class="half_HL">○
					이런 사람이랑 잘 맞아요!</span><br> 정서적 교감이 잘 통하는 사람이 좋아요! 유머 감각이 뛰어난 사람!<br>
				사소한 말에도 상처받는 사람이라 말을 이쁘게 하는 사람이 좋아요!!<br> 나를 특별한 사람으로 만들어주는
				사람!!<br>
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
