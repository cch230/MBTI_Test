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
	Kakao.init("Kakao.");
	Kakao.isInitialized();
</script>
<body>
	<div class="container">

		<section id="main" class="mx-auto my-5 py-5 px-3">
			<h1>당신의 결과는?</h1>
			<div class="resultname">
				<p>외로움이 제일 싫은 눈물 많은 핵인싸</p>
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0256_1.png" alt="0" class="img-fluid">
			</div>
			<div id="resultImg"
				class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				<img src="../image/0256.png" alt="0" class="img-fluid">
			</div>
			<div class="resultDesc">

				<span class="half_HL">○ 성격은?</span><br> 쓸데없는 걱정이 많은 스타일! <br>아직
				일어나지도 않은 상황에 대해 너무 걱정해요... <br>사회생활을 잘하고 자연스럽게 분위기를 주도하거나 리더
				역할을 잘해요! <br>핵인싸! 공감 능력이 너무 좋아서 상대방의 기분을 잘 맞춰준답니다. <br>낯은
				잘 가리지 않지만 내 마음이 허락하기 전까지는 완벽한 자신을 보여주지 않아요. <br>말이 많고 대화하는 걸
				좋아해서 고민 상담 잘해줘요! <br>상대방이 이해하기 힘들 경우 그럴수 있지 로 끝내요.<br> 부탁을
				들어줄 땐 나에게 득인지 실인지 알아서 본인의 이익 챙깁니다!<br> <br> <br> <span
					class="half_HL">○ 조심해줘요!</span><br> 감정 기복이 심한 사람입니다! <br>사람을
				좋아해서 내 사람들이 힘들면 나도 너무 힘들어요.. <br>티 내지 않고 묵묵하게 참는 스타일인데 만약 내가 이런
				사람이 진짜 싫다고 말하는 사람은 너무 싫은 거랍니다. <br>그 사람은 아마 주변에서도 다 싫어하고 있는
				사람일거예요.<br> 나는 진심으로 공감이 안 가도 그냥 공감 가는 척 할 수도 있어요!!<br> <br>
				<span class="half_HL">○ 이런 사람이랑 잘 맞아요!</span><br> 세심하게 챙겨주는 사람이
				좋아요! <br>자상한 사람이 이상형인 경우 많죠!<br> 예의 바르고 부드러운 사람이 좋아요! <br>연애하면
				몰입하는 스타일이라 상대의 절대적 지지자가 됩니다. <br>안정적인 관계를 좋아해요!<br>

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
