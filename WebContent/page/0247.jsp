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
				<p>생각보단 행동으로 바로 실천해버리는 핵인싸</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0247_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0247.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span> <br> 술자리, 내기, 노는 거, 스릴, 등
				흥미 위주의 놀이가 좋아요!<br> 유혹에 약한 나! 즉흥적이고 자유분방해요! 생각이 단순하죠!<br>
				오늘 할 일을 내일로 미루고 마지막에 폭발적으로 처리해 버리는 나!!<br> 자신감이 넘치고, 성취욕이 강해요.
				쉽게 욱하고 금방 까먹어버리는 뒤끝 없는 다혈질입니다! <br>흥미 있는 것에 적극적이고, 즉흥적이지만 순발력과
				임기응변의 능력이 뛰어나요! <br>눈치가 빠르고 감정을 잘 캐치해요! <br>그리고 감정을 표현하는데
				필터링이 없어요!<br> 타인에 대한 선입견이 없고 개방적인 스타일입니다.<br> <br> <span
					class="half_HL">○ 조심해줘요!</span><br> 나를 통제하려고 하거나 독립성을 인정해 주지
				않으면 화가 나요.<br> 화가 날수록 차가워지는 머리와 끓어오르는 피... <br>감성팔이 하는 사람,
				은유적인 표현을 많이 하거나 <br>돌려 말하는 사람들과의 대화는 의미를 파악하기 어려워서 답답해요.<br>진지한
				분위기는 싫어요!<br> <br> <span class="half_HL">○ 이런 사람이랑
					잘 맞아요!</span><br> 변덕이 심한 사람이라 융통성 있게 나에게 맞춰줄 수 있는 사람이 좋아요!<br>
				지나친 관심을 보이지 않고 외적으로 나의 스타일이면 짱! <br>자유분방하고 주변 사람들에게 관심이 많은 나라서
				<br>주위에 친한 사람이 많으니 집착은 하지 말아 주세요. <br>스킨십 좋아하면... 나도
				좋아요...//<br>
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
