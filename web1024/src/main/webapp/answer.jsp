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
	int a1 = 1;
	int a2 = 2;
	int a3 = 4;
	int a4 = 2;
	int a5 = 1;
	
	String strq1 = request.getParameter("q1");
	String strq2 = request.getParameter("q2");
	String strq3 = request.getParameter("q3");
	String strq4 = request.getParameter("q4");
	String strq5 = request.getParameter("q5");
	
	int q1 = Integer.parseInt("srtq1");
	int q2 = Integer.parseInt("srtq2");
	int q3 = Integer.parseInt("srtq3");
	int q4 = Integer.parseInt("srtq4");
	int q5 = Integer.parseInt("srtq5");
		
	int scorePerQuestion = 20;
	
	int totalScore = 0;
	
	//totalScore = totalScore + scorePerQuestion; // totalScore += scorePerQuestion 같은표현
	
	if(q1==a1)	{
		totalScore+=scorePerQuestion;
	}
	if(q2==a2)	{
		totalScore+=scorePerQuestion;
	}
	if(q3==a3)	{
		totalScore+=scorePerQuestion;
	}
	if(q4==a4)	{
		totalScore+=scorePerQuestion;
	}
	if(q5==a5)	{
		totalScore+=scorePerQuestion;
	}
	

%>	



</body>
</html>