<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="db.ConnectDB"%>
<%@ page import="db.datacontroller"%>
<%@ page import="java.util.*"%>
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
<link rel="stylesheet" href="../css/event.css">


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
				<p>흥 넘치는 긍정적이고 낙천적인 에너지의 소유자</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0257_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0257.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">
				<p>
					<span class="half_HL">○ 성격은?</span><br> 사교적 긍정적 낙천적 이라는 단어가 너무
					잘 어울려요!<br> 재치 있고 영리하고 개방적이면서 유행에 민감한 편이죠!<br> 귀가 얇아서..
					충동적인 경향이 있고 성격이 급한 고집쟁이랍니다.<br>거절 못 하는 우주 최강 오지라퍼! <br>하고
					싶은 건 다하는 성격이라 소액결제하고 미리에 나에게 맡기는 ~~ <br>술자리는 무조건 참석!<br>
					겉으로는 순종적인 척 하지만 내가 즐길 수 있는 방향으로 모두를움직여요.<br> 일은 최대한 미루다가 온 우주의
					집중력을 발휘해 한 번에 끝내버려요!!<br> <br> <span class="half_HL">○
						조심해줘요!</span><br> 유리 멘탈이라서 혼자 있는 걸 매우 힘들어해요.<br> 싸우는 걸 너무 싫어하는데
					그렇다고 해서 싸움에 지는 건 용납할 수 없어요! <br>삐지기도 잘 삐지는 .. 하지만 금방 풀리죠!<br>
					카톡이 잠잠한 건 싫어요! <br>나에게 이론 같은 설명서.. 최악이죠!<br> 조용한 분위기도 너무
					어색하고 싫어요!!! <br>하기 싫은 건 죽어도 안 해요.<br> <br> <span
						class="half_HL">○ 이런 사람이랑 잘 맞아요!</span><br> 함께 시간을 많이 보내주는
					사람이 좋아요!<br> 연락을 자주 한다거나 나에게 적극적으로 마음을 표현하는 사람 짱!<br> 변덕이
					심하고 쉽게 질려 하니 다양한 놀이를 같이 해주는 사람!<br>
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
