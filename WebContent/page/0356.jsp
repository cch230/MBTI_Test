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
	Kakao.init("Kakao.m");
	Kakao.isInitialized();
</script>
</head>
<body>
	<div class="container">

		<section id="main" class="mx-auto my-5 py-5 px-3">
			<h1>당신의 결과는?</h1>
			<div class="resultname">
				<p>사람 좋아하는 정의로운 덤벙쟁이</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0356_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0356.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 말로 사람을 움직이게 하는 능력이
				탁월해요! <br>말을 이쁘게 하고 말로 사람을 홀리는 매력이 있어 <br>대인관계가 좋고 주변에 인기가
				많으며 모두의 신뢰를 받는 나! <br>감수성이 매우 풍부해 가끔은 감정에 휘둘려 객관적 판단을 잘 못해요! <br>기분
				안 좋을 때 짜증 내고 나중에 후회와 죄책감으로 시달려요. <br>귀가 매우 얇아서 맺고 끊는 거 못해요!<br>
				무리에 속해 있지만 마이웨이~ <br>정이 많지만 배신 당하면 칼같이 아웃!<br>긍정적인 거 이 세상
				넘버원! <br>처음 보는 사람한테 말 잘 걸어요.<br>숫자에 약한 사람.. 완벽하고 싶은 데
				덤벙쟁이! <br>핵인싸고 쾌활하지 스트레스 받으면 세상 다운... <br>솔로 라이프도 연애도 즐기는
				나는 워커홀릭!<br> <br> <span class="half_HL">○ 조심해줘요!</span><br>사람을
				너무 잘 믿고 나보다 남이 먼저라 갈등 상황을 제일 싫어해요.<br>나의 의견이 비판적으로 부정당하면 대판
				싸웁니다! 고집 세요!<br>분노가 치밀어 오르면 미친 듯이 화내요! 가만히 두세여!!<br>싸울 때
				이성을 잃으면 팩트 폭격기<br> <br> <span class="half_HL">○ 이런
					사람이랑 잘 맞아요!</span><br>리액션, 눈치, 센스가 탁월한 나와 생각하는 바가 같고 똑같은 감정이길<br>바라며
				대화가 잘 통하는 사람이 좋아요! 인정과 칭찬을 잘 해주는 사람!<br>먼저 다가와 주고 고마움을 잘 표현하는
				사람!<br>

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
