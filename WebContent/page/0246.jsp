<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="db.ConnectDB"%>
<%@ page import="java.util.*"%>
<%@ page import="db.datacontroller"%>

<!DOCTYPE html>
<html>
<head>
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
	Kakao.init("Kakao");
	Kakao.isInitialized();
</script>
</head>
<body>
	<div class="container">

		<section id="main" class="mx-auto my-5 py-5 px-3">
			<h1>당신의 결과는?</h1>
			<div class="resultname">
				<p>현실적이면서 리더십 강한 당신</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0246_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0246.png" alt="0" class="img-fluid">
			</div>

			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 고집이 세고 현실적인 사람입니다! 호불호가
				매우 확실해요!<br> 리더 하는 거 너무싫은데 막상 하면 잘하죠! 일처리는 똑 부러지게!<br>
				이것저것 배우길 좋아하는 머리 좋은 똑똑이인 나는 눈치가 빠르고 말을 잘해요! 호기심 갑! 지적 욕구도 갑! <br>겉과
				속이 일치한 사람이라 차라리 앞 담을 하지 앞에서 못할 얘기는 뒤에서도 안 해요!! 과정보다는 결과가 중요하죠! 완전 워커
				홀릭! <br>감정적이기보다 상황 분석 후 누가 잘못했는지 객관적 판단을 해요. <br>하지만 생각만
				하지 입 밖으로 내뱉지는 않아요! 사전 계획 철저하지만 융통성 제로!<br> <br> <span
					class="half_HL">○ 조심해줘요!</span><br> 남이 일을 못하면 너무 답답해서 잔소리가
				심해져요. 일 잘하는 사람은 좋은 사람, 일 못하는 사람은 나쁜 사람! <br>위로 잘 못해요... 외로움을 잘
				못 느끼는 편이라 외로워하는 사람이 이해 안 가요. <br>시간 약속 어기는 거, 즉흥적인 거 , 번개 약속, 내
				시간 방해하는 게 세상에서 제일 싫어요!<br> <br> <span class="half_HL">○
					이런 사람이랑 잘 맞아요!</span><br> 일적으로 다른 사람에게 인정받는 걸 좋아해서 칭찬이 너무 좋아요.<br>
				사생활을 존중해 주고, 자기 일에 성실한 사람, 배울 점이 있는 사람이 너무 좋습니다! <br>티 나게 날
				챙겨주고 표현해 주는 사람! <br>하지만 나에게 너무 많은 사랑을 요구하지 않는 사람!<br>
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
