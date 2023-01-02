<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String[] name = {
			"강지훈","곽효상","김계현","김도희","김민송",
			"김설","김수곤","김태환","민태희","양인범",
			"이가은","이가을","이득규","이동규","이지원",	
			"이호민","장준영","정성민","조건희","조영우",
			"전민구","최은서","최정헌","황현정"}; 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ol>
		<%
			for(String s : name) {
		%>
				<li><a href="./studentResponse.jsp?name=<%=s%>"><%=s%></a>
		<%	
			}
		%>
	</ol>
</body>
</html>