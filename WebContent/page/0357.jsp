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
				<p>감정기복 심한 활발한 소심쟁이</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0357_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0357.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 싫고 좋은 게 감정에서 드러나요! <br>그래서
				싫은 상사에게 아부 잘 못해요!<br>자유로운 영혼이라 주의가 산만하고 어디로 튈지 몰라요! <br>일
				벌리고 마무리 잘 못해요! <br>누가 나서지 않으면 답답해서 나서는 스타일!<br> 친해지기 전엔
				생존에 의한 인싸력이 생기지만, 친구가 생기면 찌질이로..<br> 약간 집콕러! 친구들이랑 노는 게 좋지만 내
				시간도 필요해요!<br> 눈치 빠른데 하기싫으면 모른척하요! <br>표현력이 매우 풍부하고 대화하는 걸
				좋아하는 나는 귀여운 매력덩어리! <br>리액션 쟁이! 나를 위해 돈을 쓰고 싶을 때 막 쓰는 프로 소비러!<br>
				<br> <span class="half_HL">○ 조심해줘요!</span><br> 소외되는 게 제일
				싫어요! <br>남들이 보면 굉장히 인싸 같고 하지만 은근 사색도 많이 하는 생각 많은.. <br>그러니
				선 넘진 말아주세요.<br> 항상 웃고 있지만 가면 뒤엔 깊은 고민들이 많아요...<br> 나는 가만히
				있는 걸 싫어해요! <br>활동적인 거 할래요! 움직일래요!<br> <br> <span
					class="half_HL">○ 이런 사람이랑 잘 맞아요!</span><br> 나는 감정기복이 심해서 나를
				이해해주는 사람이 좋아요!<br> 하고 싶은게 많은 나를 반대하기 보다 응원해주는 사람이 좋아요!<br>
				든든하고, 믿음직 스럽고, 의지할 수 있는 사람이 짱! <br>나를 사랑하는지 늘 확인받고 싶은 나라서 늘
				적극적으로 표현해주는 사람이 좋아요!<br>
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
				onclick="location='<%=urlstr%>'">다시하기</button>
		</section>
		<jsp:include page="event.jsp" flush="false"></jsp:include>

		<script src="../js/share.js" charset="utf-8"></script>
		<script src="../js/data.js" charset="utf-8"></script>
	</div>
</body>
</html>
