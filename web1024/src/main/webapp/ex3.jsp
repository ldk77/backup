<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<!-- 정적 프로그래밍 요소 -->
	<div>구디</div>
	
	<% 
		//동적 프로그래밍 요소
		String result = "미성년자";
		int age = 10;
		
		// 조건문
		
		if(age > 18) { 
			result = "성인";			
		}
			
	%>
	
	<div><%=age%></div>
</body>
</html>