<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>receiveForm</title>
</head>
<body>
	<h1>receiveForm</h1>
	<%
	request.setCharacterEncoding("UTF-8");
	String nick = request.getParameter("nick");
	%>
	<div><%=nick %></div>
	

</body>
</html>