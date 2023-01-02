<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");


	String[] question = request.getParameterValues("question");
	System.out.println(question.length +"<--question.length"); // 5
	
	// 답안 주석...
	String [] answer = {"RM", "리사", "이특", "지효", "청하"};
	
	//체점 변수값 설정(config 설정)
	int fullScore = 100;	
	int scorePerQuestion = 0;
	
	// 100점 만점기준일때 한문제당 점수설정 점수가 딱떨어질때만 점수설정
	if(fullScore % answer.length !=0){
		System.out.println("문제 수 세팅이 잘못됐습니다.");
	} else{
		scorePerQuestion = fullScore / answer.length;
		
	}
	int totalScore = 0;
	
	for(int i=0; i<question.length; i=i+1){ //i=i+1, i++
	
		if(question[i].equals(answer[i]) == true) { //question[0].equals(answer[0]) == true
			totalScore = totalScore + scorePerQuestion; 
		}
	}
	
	System.out.println(totalScore+"<--totalScore");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>점수(별점)</h1>
		<div>
			<%
				for(int i=10; i<=totalScore; i=i+10){//i+=10					
			%>
				&#11088;
			<%
				}
			%>
			<span><%=totalScore%>점</span>
		</div>	
	</div>

</body>
</html>