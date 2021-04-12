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
				<p>프로 집콕러이자 거절 못하는 귀차니즘 완벽주의자</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1257_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1257.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 순둥이 그 자체! 난 안 착하다고
				생각하는데 남들이 착하다고 해요.<br> 타인의 니즈를 빨리 캐치! 섬세한 부분까지도 잘 캐치! <br>하지만
				말로 표현하기가 너무 어려워요. 감정 표현이 서툴... <br>나와 만나면 남들은 편안하고 안정된 느낌 이래요.
				<br>모든 일에 의욕이 부족하지만 한 번 삘 타면 제대로! <br>지만 미룰 수 있을 때까지 미루기!<br>
				사람들 만나는 거 좋은데 싫어요. <br>집 가면 연락 두절, 조용한 관종, 낯가리는데 친해지면 <br>드립
				폭발하고 은근 팩트 폭격기, 친구한테도 속마음 얘기 안 하고 쌓아둬요. <br>게으름의 끝판왕!<br>
				<br> <span class="half_HL">○ 조심해줘요!</span><br> 개인 시간은 필수!
				개인 공간 침범하는 거 극혐.. <br>감정 기복이 심해요. 고집쟁이기 때문에 자존심 건드리지 말아 주세요. <br>얼굴
				빨개지거든요. 어색한 자리는 피하고 싶어요.. <br>소리 지르면서 싸우는 거 너무 싫어요.<br>
				문제나 갈등 상황이 오면 피하고 싶습니다! <br>싸우기보다는 조용히 멀어지는 스타일.. 날카로운 말에
				상처받아요.<br> <br> <span class="half_HL">○ 이런 사람이랑 잘
					맞아요!</span><br> 칭찬 잘 해주는 사람 너무 좋아요! <br>칭찬해 주면 의심부터 하지만 하루 종일 그
				생각만 다.. <br>기분이 좋아요! 가치관이 비슷하고 상냥한 사람!<br> 내 행동에 잘 반응해 주고,
				잘 웃어주면 행복해요! <br>마음 열기까지는 오래 걸리지만 사랑에 빠지면 연인이 우선인 나! 금사빠는 노노!<br>
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
