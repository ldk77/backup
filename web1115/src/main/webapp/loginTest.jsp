<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		if(session.getAttribute("x") == null){
	%>
		<div>로그인 상태에서 보이는 페이지</div>
	<%
		}else {
	%>
		<div>비로그인 상태에서 보이는 페이지</div>
		<div><%=session.getAttribute("x")%></div>
		<div><a href="./logout.jsp">로그아웃 </a></div>
	<%
		}
	%>	
</body>
</html>