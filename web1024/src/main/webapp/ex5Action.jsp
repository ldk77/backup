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
	String paramX = request.getParameter("x");
	String paramY = request.getParameter("y");
	String op = request.getParameter("op"); // "+","-","*","/","%" 
	double x = Double.parseDouble(paramX);
	double y = Double.parseDouble(paramY);
	
	double result = 0; //0.0
	
	if(op.equals("+")){
		result = x + y;
	} else if(op.equals("-")){
		result = x - y;
	} else if(op.equals("*")){
		result = x * y;
	} else if(op.equals("/")){
		result = x / y;
	} else {
%>		
		<div>잘못된 연산자를 입력하셨습니다.</div>
<% 		
	}

%>	
	<div>
		result : <%=result%>
	</div>


</body>
</html>