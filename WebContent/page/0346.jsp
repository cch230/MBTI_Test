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
				<p>피해주는 게 제일 싫은 열정 불도저</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0346_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0346.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 답답한 사람이랑 같이 일하면 그냥 혼자
				총대 메고 다해버려요.<br> 끈기와 책임감이 뛰어나 맡은 일에 최선을 다해요! <br>피해 주는 거,
				피해 받는 거 싫어하고 남 일에 관심이 없어요! <br>오로지 혼자 알아서!!0<br> 누구한테
				의존하거나 의지하는 스타일 아닙니다!<br> 고민 상담은 감정적인 공감보다는 논리적인 해결책으로!<br>
				삶이 늘 분주하고 일을 잘하며 머리가 똑똑해요! <br>그래서인지 사는 게 쉽고 내가 하기 싫은 건 죽어도 안
				해요! <br>근데 정말 어쩔 수 없이 해야 한다면 최대한 힘 안 들이고 <br>빨리 끝낼 수 있는
				방법을 찾아요.<br> 매사에 자신감이 넘치고 목표가 확실해 카리스마와 섹시한 사이코!<br> <br>
				<span class="half_HL">○ 조심해줘요!</span><br> 머리가 좋아서인지 나보다 똑똑하지
				않으면 무시하 경향이... <br>타인에게 의도하고 상처 주는 경우 많아요. <br>반복되는 실수
				용납하지 않아요.<br> 우유부단하고 능력 없는 고집 센 사람을 제일 싫어하고,<br> 해보지도 않았는데
				못한다는 말이 너무 싫어요! <br>불도저 같은 스타일!! 비효율적 관습을 이해할 수 없어요. <br>논쟁을
				좋아하고 승부욕이 강해 의견이 엇갈려도 내기해요. <br>이겨야 적성이 풀리는.. 지적은 no!<br>
				<br> <span class="half_HL">○ 이런 사람이랑 잘 맞아요!</span> <br>비전이
				있고 똑똑하면서 나를 믿고 인정해주는 사람이 좋아요!<br> 매 순간 감정적인 사람은 no! <br>매력적인
				이상형이 나타나면 은근 금사빠!<br>
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
