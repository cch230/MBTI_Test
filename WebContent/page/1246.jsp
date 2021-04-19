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
				<p>어떤 일이든 꾸준히 해내는 우등생 같은 당신</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1246_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1246.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<p>
					<span class="half_HL">○ 성격은?</span><br> 전체적으로 차분한 성격. 말이 느린
					편이고 늘 신중해요.<br> 차가워 보이는 이미지인데 막상 친해지면 의외로 능글!<br> 겉으로는
					무덤덤해 보여도 속으로는 혼자 생각이 너무 많아요.<br>한결같이 진지한 사람.. <br>책임감이 너무
					많아서.. 장남/ 장녀같은 느낌.<br> 규칙에 엄격한 사람이라 살짝 꼰대 같은...? <br>보수적인...?<br>
					<br> <span class="half_HL">○ 조심해줘요!</span><br> 사람이 많은 곳을
					가면 금방 지쳐요..<br> 말이 많거나 너무 시끄럽고 감정이 <br>풍부한 사람과는 맞지 않을 수도
					그런 사람이 싫다는 게 아니라 그냥.. <br>안 맞는 거랍니다.<br> 즉흥적인 일은 피하는 경우가
					많아요.<br> 앞뒤 다르고 약속 어기는 사람 진짜 매우 극혐.<br> 내 얘기를 하는 것도 남 얘기
					들어주는 것도 힘들어요..<br> 그냥 힘들어 보이면 혼자 내버려 두세요.<br> <br> <span
						class="half_HL">○ 이런 사람이랑 잘 맞아요!</span><br> 책임감 있고 약속을 잘 지키는
					사람이 좋아요!<br> 앞뒤가 똑같고 예의 바른 사람, 인성 좋은 사람이 최고!<br> 신중한 성격이라
					신뢰가 가장 중요하고 <br>천천히 다가오는 사람이 좋습니다. <br>감정 표현이 약한 스타일이라
					성숙한 사람이 좋아요.<br>
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
