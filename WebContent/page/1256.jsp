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
				<p>온화하고 성실하면서 서포트 잘해주는 당신</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1256_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1256.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<p>
					<span class="half_HL">○ 성격은?</span><br> 내성적인데 상황에 따라 변하는 나의
					모습, 나도 날 잘 몰라..<br> 나서는 거 싫어해요! 하지만 관심은 좋아요!<br> 다른 사람의
					감정을 잘 캐치하고 공감도 잘해줍니다! <br>나는 배려왕! 인간관계가 좁지만 깊어요! <br>게으른
					완벽주의자!! 계획 세우는 거 좋아! 계획 대로 해야 마음이 편해요! <br>늘 기억해 둘 것은 메모하는 습관.<br>
					전화가 오면 엄청 고민 후에 받아요!!<br> 무슨 재미로 사니?라고 모두들 말하지만 현재 난 매우 재밌어요!<br>
					<br> <span class="half_HL">○ 조심해줘요!</span><br> 쓸데없는 감정
					소모가 제일 싫어요! <br>가벼운 연애할 거라면 다가오지 말아 주세요! <br>내 기준에서 벗어난
					행동을 한다면 다시 보지 않아!<br> 남 부탁 거절 못 하고 나도 부탁 잘 못해요. <br>남 들을
					위하는 마음이 큰 만큼 잔소리도 많아요! <br>대놓고 말 못 하고 속앓이만 하니까 주의해 주세요!<br>
					아! 저에게 지나친 집중은 하지 말아 주세요!!<br> <br> <span class="half_HL">○
						이런 사람이랑 잘 맞아요!</span><br> 나를 편안하게 해주는 사람이 좋아요! 성실하고 똑 부러지는...!<br>
					나는 무한대로 퍼주는 사람이기 때문에 나에게도 해주는 사람 짱!<br> 세심하게 작은 기념일이나 생일 등
					이벤트를 꼼꼼하게 <br>챙겨주는 만큼 받는 사람 잘 표현해 주면 뿌듯하고 기분이 좋아요!<br>
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
