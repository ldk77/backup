<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for(int dan=2 ; dan<=9; dan=dan+1) {
	%>
		<a href = "./guguResponse.jsp?dan=<%=dan%>"><%=dan%>단</a>
	<%
		}
	%>
</body>
</html>