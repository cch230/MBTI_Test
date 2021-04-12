<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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

<head>

</head>
<body>
	<%
	String url = "", uri = "", urlstr = "";
	url = request.getRequestURL().toString();
	uri = request.getRequestURI().toString();
	urlstr = url.substring(0, url.indexOf(uri) + 1) + "/MBTI/page/tmp.jsp";
	%>
	<section id="main" class="mx-auto my-5 py-5 px-3">
		<div id="resultImg"
			class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
			<img src="../image/event.jpg" alt="0" class="img-fluid">
		</div>
		<form action="tmp.jsp" name="form1" method="post">
			<label> <input name="name" id="name" type="text" required />
				<div class="label-text">이름</div>
			</label> <label> <input type="number" name="phone" id="phone"
				required />
				<div class="label-text">휴대폰 번호 ex)01012341234</div>

			</label> <label class="form-check-label" for="flexCheckDefault"> 개인정보
				수집 및 이용에 관한 안내 문구<br> 수집하는 개인정보의 항목<br> - 필수사항: 이름 / 휴대폰번호<br>
				2. 수집 및 이용목적: 이벤트 대상자 확인, 경품 발송<br> 3. 개인정보 보유 및 이용기간: 이벤트 및 발송
				완료 후 즉시 파기<br> 귀하께서는 본 동의를 거절할 수 있습니다.<br> 단, 거절하신 경우 이벤트
				참여가 제한될 수 있습니다."
			</label>
			<div>
				<input class="form-check-input mx-auto mt-4" type="checkbox"
					value="동의하기" id="flexCheckDefault" required> 동의하기
				<button type="submit" class="btn btn-outline-secondary"
					value="Submit">응모하기</button>
			</div>
		</form>
		<div>
			<br> <br> <br> <br> <br> [ 유의사항 ]<br> - 응모기간은 4월 4일 00시 00분 ~ 4월 12일 23시 59분까지 유효합니다.<br> - 당첨자는 5분입니다.<br> - 당첨 문자 발송
			후 공지한 기간 내 회신이 없을 경우 당첨이 취소 되며 당첨은 다음 번호로 넘어갑니다.<br> Ex) 당첨 번호
			30번 당첨자 미 응답 시 31 ➝ 32 ➝ 33...순 - <br>당첨자 회신 완료 이후 경품 배송 일정은<br>
			개별적으로 공지드립니다. <br>- 휴대폰 번호 1개당 최대 1회까지만 참여 가능합니다.<br> - 본
			상품은 해당 이미지와 다를 수 있습니다. <br>- 기입 정보 오류로 인한 불이익 및 과실에 대해 책임지지
			않습니다. <br>- 해당 이벤트 상세 내용은 주최 사정에 의해 사전 고지 없이 변경되거나 취소될 수 있습니다.
		</div>

	</section>

</body>
</html>