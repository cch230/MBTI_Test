<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ page import="java.util.*"%>
<%@ page import="db.ConnectDB"%>
<%@ page import="db.datacontroller"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%
	String url = "", uri = "", urlstr = "";
	url = request.getRequestURL().toString();
	uri = request.getRequestURI().toString();
	String name = request.getParameter("name");
	String pho = request.getParameter("phone");
	String restr = name.replaceAll("[^0-9]", "");
	urlstr = url.substring(0, url.indexOf(uri) + 1) + "/MBTI/page/tmp.jsp";
	System.out.println(name.length());
	if (pho.length() != 11 || name.length() < 4 || name.length() > 12 || !restr.equals("")) {
	%>
	<script>
		alert('이름 또는 전화번호를 확인해주세요.');
		window.history.back();
	</script>
	<%
	} else {
	List<String> str = new ArrayList<>();
	str.add(name);
	str.add(pho);
	datacontroller dc = datacontroller.getInstance();
	dc.select(str);
	%>
	<script>
		alert('응모되었습니다. 창을 닫습니다.');
		window.history.back();
	</script>
	<%
	}
	%>

</body>
</html>