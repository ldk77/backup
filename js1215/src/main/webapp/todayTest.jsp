<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>서버(Back-end)기술로 시간 출력(java)</h1>
	<%
		// 서버(톰켓)에서 html로 변경되기 전에 해석
		Calendar today = Calendar.getInstance(); // 왜? new Calendar()
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH) + 1;
		int date = today.get(Calendar.DATE);
	%>
	<%=year%>년 <%=month%>월 <%=date%>일
	
	<h1>클라이언트기술(Front-end)로 시간 출력(JAVASCRIPT)</h1>
		<div>
			<span id="year"></span>년 <span id="month"></span>월 <span id="date"></span>일
		</div>
	<script>
		//서버에서(html로 변경된) 응답받은 html파일을 브라우저가 읽을때 해석 -> 클라이언트 시간
		let today = new Date();
		let year = today.getFullYear();
		let month = today.getMonth() + 1;
		let date = today.getDate();
		document.querySelector('#year').innerHTML = year;
		document.querySelector('#month').innerHTML = month;
		document.querySelector('#date').innerHTML = date;
	</script>
</body>
</html>