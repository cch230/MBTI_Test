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
				<p>환불원정대, 내 갈 길 알아서 가는 마이웨이자'</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0347_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0347.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<span class="half_HL">○ 성격은?</span><br> 혼자서 돌아다니는 게 제일 편하고 독립심이
				강한 마이웨이입니다!<br> 밖에 나가면 잘 노는데 집 안에 있는 것도 좋아해요!<br> 나한테 잘해주면
				두 배로 잘해주는 데 나한테 못해주면 빠이!!<br> 좋아하는 사람과 싫어하는 사람을 명확하게 구분하고 내 마음을
				표현하는 데 거리낌이 없어요. <br>그래서 그들이 날 어떻게 생각하는지도, 다른 사람 일에도 관심 없어요! <br>자기합리화랑
				포기를 잘해요! <br>그래서 싸우더라도 금방 풀어요! <br>내가 하고 싶은 대로 살기 때문에 스트레스
				잘 안 받죠! <br>나는 여기저기 다방면으로 관심이 많지만 뒷심과 집중력 부족으로 금방 포기해요! <br>하지만
				손재주가 좋고 다 잘해요!<br> <br> <span class="half_HL">○
					조심해줘요!</span><br> 감정 기복이 심해서 기분 바뀌는 거 다 티 나요! <br>변덕이 심하고 고집이
				세면서 자존심이 강력한 사람! <br>정해진 틀이나 반복적인 일을 가장 싫어하고 뭐하나 꽂히면 그것만 해요! <br>지시받는
				거 극혐! 나이로 뭐라 하는 거 완전 극혐! <br>명령조 싫어!! 표정 관리할 줄 아는데, 나 너 싫어하는 티
				팍팍 내고 싶어, 라는 마인드라 조심해 주세요!<br> <br> <span class="half_HL">○
					이런 사람이랑 잘 맞아요!</span><br> 말보다 행동으로 하는 사람이 좋아요! <br>공감도 잘해주고 계속
				관심을 주는 사람! <br>대화가 잘 통하고 외적으로 나의 스타일인 사람!<br>0 이쁘고 잘생긴 거
				다들 좋아하잖아요! 저도 그런 겁니다!!<br>
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
