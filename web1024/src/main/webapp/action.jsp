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
	String age = request.getParameter("age");
	int numAge = Integer.parseInt(age); 
	if(numAge > 18) {
		out.print("성인");
	} else {
		out.print("미성년자");
	}
%>

</body>
</html>