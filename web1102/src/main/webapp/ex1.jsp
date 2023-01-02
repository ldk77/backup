<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	
	// 기본 API
	// JDK(자바프로그램 + JRE(라이브러리(API))+JVM))
	Calendar today = Calendar.getInstance();
	out.print(today);
	
	int todayYear = today.get(Calendar.YEAR);// Calendar.YEAR static 필드(멤버변수)
	int tadayMonth = today.get(Calendar.MONTH); // 
	int todayDate = today.get(Calendar.DATE); // 오늘날자
	// day는 요일로 많이씀
	int todayDay = today.get(Calendar.DAY_OF_WEEK);
	String todayDayStr = null;
	switch(todayDay){
	case 1: 
		todayDayStr = "일요일";
		break;
	case 2: 
		todayDayStr = "월요일";
		break;
	case 3: 
		todayDayStr = "화요일";
		break;	
	case 4: 
		todayDayStr = "수요일";
		break;
	case 5: 
		todayDayStr = "목요일";
		break;
	case 6: 
		todayDayStr = "금요일";
		break;
	case 7: 
		todayDayStr = "토요일";
		break;
	}
	
	Calendar xmas = Calendar.getInstance();
	// 2022-12-25 일로 변경
	xmas.set(Calendar.YEAR, 2022);
	xmas.set(Calendar.MONTH, 11);
	xmas.set(Calendar.DATE, 25);
	
	int xmasDay = xmas.get(Calendar.DAY_OF_WEEK);
	String xmasDayStr = null;
	switch(xmasDay){	
	case 1: 
		xmasDayStr = "일요일";
		break;
	case 2: 
		xmasDayStr = "월요일";
		break;
	case 3: 
		xmasDayStr = "화요일";
		break;	
	case 4: 
		xmasDayStr = "수요일";
		break;
	case 5: 
		xmasDayStr = "목요일";
		break;
	case 6: 
		xmasDayStr = "금요일";
		break;
	case 7: 
		xmasDayStr = "토요일";
		break;
	
	}


%>
	<h2>오늘</h2>
	<div>년 : <%=todayYear%></div>
	<div>월 : <%=tadayMonth + 1%></div>
	<div>일 : <%=todayDate%></div>
	<div>요일 : <%=todayDayStr%></div>
	<div>이번달의 마지막 날짜 : <%=today.getActualMaximum(Calendar.DATE) %></div>
	
	<h2>xmas</h2>
	<div>년 : <%=xmas.get(Calendar.YEAR)%></div>
	<div>월 : <%=xmas.get(Calendar.MONTH)+1%></div>
	<div>일 : <%=xmas.get(Calendar.DATE)%></div>
	<div>요일 : <%=xmasDayStr%></div>
	<div>크리스마스달의 마지막 날짜: <%=xmas.getActualMaximum(Calendar.DATE) %></div>
	
</body>
</html>