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
	
	String paramX = request.getParameter("num");
	double num = Double.parseDouble(paramX);
	
	if(num % 2 == 0){
		out.print("짝수");
	} else {
		out.print("홀수");
	}
	
	
	//ex6Form.jsp (숫자입력) -> ex6Action.jsp 홀수/짝수 판별
%>
</body>
</html>