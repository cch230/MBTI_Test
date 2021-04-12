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
				<p>과묵하지만 때로는 장난꾸러기인 게으른 천재</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1347_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1347.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 조용하고 말이 없는 편인데 내가 관심 있는
				건 말을 많이 해요!<br> 정서적인 표현이 어려워서 친해지기 전까지는 나를 이해하기 어려워요.<br>
				말을 많이 안 해서 그렇지 감수성이 풍부합니다.<br>책 진짜 좋아하는데 읽기 귀찮아서 리스트만 작성해두는...
				<br>혼자 있는 게 제일 편하 행복한 나는 자발적 아싸! <br>낯가림이 심해서 인간관계가 계산적이고<br>
				관계의 폭이 좁지만 깊어요! 귀찮은 게 제일 싫은 미루기의 끝판왕!<br> 하지만 한번 시작하면 끝을 보는 나는야
				게으른 천재!?<br> 자기 주관이 뚜렷하고 호불호가 확실해요! <br>상처를 받지 않는 스타일!!<br>
				꼭 필요한 게 아니면 금방 잊어버리곤 해요!<br> <br> <span class="half_HL">○
					조심해줘요!</span><br> 남에게 피해 주는 거 싫어하고 남에게 관심이 별로 없어요!<br> 개인주의자라 공감
				능력이 부족해요! 남이 <br>내 욕하는 거 신경 안 쓰고 나도 남 욕 안 해요! <br>대화할 때
				가벼운 얘기 싫어요!!<br> 말장난, 농담, 등 무 논리인데 목소리만 큰 사람 싫어요!<br> 친한
				친구여도 별일 없으면 연락 잘 안 합니다!<br> <br> <span class="half_HL">○
					이런 사람이랑 잘 맞아요!</span><br> 성격상 먼저 부담스럽게 관심 표현하는 <br>사람보다는 자기가 먼저
				좋아하고 관심이 가는 사람을 좋아해요! <br>내 눈길이 가는 사람인데.. 똑똑하고....<br> 자기
				할 일을 잘하고 있다면... 그 사람은 그냥 사랑입니다.<br>
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
