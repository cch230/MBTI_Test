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
				<p>남극에서 온 츤데레지만 고집 센.. 가끔은 수다쟁이</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1346_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/1346.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 나는 사람들이랑 친해지는 데 오래 걸려요.
				<br>하지만 관계 정리는 칼 같이!!<br>남 일에 눈치 안보고 늘 무신경한 나지만 하나 꽂히면 깊게
				빠져들어요!<br> 혼자 있는 것을 제일 좋아합니다! 완전한 개인주의자!<br> 약간의 관종끼가 있지만
				내성적이라 표출 하지 않아요!!<br> 표현을 하지 않아도 츤데레의 느낌과 의외로 허당의 모습이 보여요!<br>
				항상 완벽을 추구하는 스타일이라 세세한 계획 세우는 것을 좋아해요.<br> 어떤 것에 대해 다양한 각도로 <br>해석하는
				걸 좋아하고 수다 떠는 것을 좋아해요! <br>사실과 원리원칙을 중요시 하고 돈 관리를 매우 잘합니다!<br>
				<br> <span class="half_HL">○ 조심해줘요!</span><br> 단체 활동은 되도록
				피하고 싶어요. 하지만 주도적인 역할을 맡아요!<br> 효율성이 떨어지는 시스템 용서 못해! <br>하나부터
				열까지의 이유를 말할 수 있어야 나의 고집을 꺽을 수 있어요! <br>감정에 휘둘리는 거 싫어요!<br>
				누군가 고민 상담하면 겉으로는 관심 있는 척 하지만 공감을 잘 못해요.<br> <br> <span
					class="half_HL">○ 이런 사람이랑 잘 맞아요!</span><br> 한결같이 예의가 바르고 배려하는
				나는 차분한 사람을 좋아합니다!<br> 삶의 가치관이나 방향성이 같은 사람이 너무 좋아요!<br> 거짓말
				싫어요! 솔직하게 대해주세요!<br>
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
