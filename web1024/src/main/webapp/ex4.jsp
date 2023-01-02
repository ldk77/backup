<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	// ex4Form.jsp -> ex4.jsp(action)
	String age = request.getParameter("age");
	int numAge = Integer.parseInt(age); 
	if(numAge > 18) {
%>
	<h2>당신은<span style="color:red;"> <%=age%>세 </span>성인</h2>
<% 
	} else {
%>		

	<h2>당신은<span style="color:blue;"> <%=age%>세 </span>미성년자</h2>
<% 	
	}
	
	
	String gender = request.getParameter("gender");
	if(gender.equals("M")){
%>
	<h2><span style="color:blue;"> 남자 </span>입니다.</h2>		
<%		
	} else {
%>		
	<h2><span style="color:red;"> 여자 </span> 입니다.</h2>
<%
	}
%>
	

</body>
</html>