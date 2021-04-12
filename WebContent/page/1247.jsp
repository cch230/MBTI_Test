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
				<p>과묵하면서 할일 다하는 자발적 아싸 공대생 스타일</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1247_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1247.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br>남에게 관심이 별로 없어요! <br>그래서인지
				선 긋기의 달인!<br>그리고 인스타는 비공개 계정인 경우가 많아요! <br>연락도 먼저 잘 안 하죠.<br>말투는
				조근조근하고 간결한 말투를 사용해요. 약간 기계 느낌..?<br>손재주가 뛰어나고 기계 조작을 매우 잘하는 공대생
				스타일!<br>근데 은근 활동적인 것을 좋아해요(다만 하기까지의 과정이 귀찮아)<br>꽂히는 건 무조건
				해야 해요! 즉흥/충동적인 성격이라 프로 소비러!<br>아는 분야의 얘기엔 신나서 말하고 관심 없으면 쳐다보지도
				않는...<br> <br> <span class="half_HL">○ 조심해줘요!</span><br>남
				일에 간섭 안 해요. 그래서 나에게 간섭하면 진심으로 욕이 나와요.<br>피해 주는 것도 피해 받는 것도 너무
				싫어요. <br>공감 능력이 조금.. 떨어지는..<br>그래서 누군가 나에게 찡찡거리면 싫어요! <br>시끄러운
				거 질색!!<br>서론 본론 결론 으로 대화 하는 게 <br>좋아서 감정적인 사람과의 대화는 어려워요 <br>(그래서
				결론이 뭐야? 뭘 말하고 싶은데?)<br> <br> <span class="half_HL">○
					이런 사람이랑 잘 맞아요!</span><br>내가 좋아하는 사람은 분석하고 모르는 건 알아내려고 해요.<br>그래서
				호감이 있는 상대에게는 물음표로 끝나죠. 솔직한 사람!<br>내숭 없는 사람! 부담스럽지 않은 사람! <br>친구든
				이성이든 내가 먼저 좋아하면 호기심 가득! <br>관심 밖인 사람은 안중에도 없어요!<br>

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
				style="margin-right: 30px" onclick="js:setShare()">공유하기</button>
			<button type="button" class="kakao mt-3 py-2 px-3"
				onclick="js:moveto()">나도 해보기</button>
		</section>
		<jsp:include page="event.jsp" flush="false"></jsp:include>

		<script src="../js/share.js" charset="utf-8"></script>
		<script src="../js/data.js" charset="utf-8"></script>
	</div>
</body>
</html>
