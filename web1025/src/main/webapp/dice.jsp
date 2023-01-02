<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dice.jsp</title>
</head>
<body>
<%
	int d1 = (int)((Math.random()*6) + 1);// 입력값 없어도됨 0<x<1 사이의 아무수
	int d2 = (int)((Math.random()*6) + 1);// int로 변형하면 소수점아래 버림
	String imgName1 = null;
	String imgName2 = null;
	
	if(d1 == 1){
		imgName1="./img/1.jpg";
	} else if(d1 == 2){
		imgName1="./img/2.jpg";
	} else if(d1 == 3){
		imgName1="./img/3.jpg";
	} else if(d1 == 4){
		imgName1="./img/4.jpg";
	} else if(d1 == 5){
		imgName1="./img/5.jpg";
	} else if(d1 == 6){
		imgName1="./img/6.jpg";
	}
	
	if(d2 == 1){
		imgName2="./img/1.jpg";
	} else if(d2 == 2){
		imgName2="./img/2.jpg";
	} else if(d2 == 3){
		imgName2="./img/3.jpg";
	} else if(d2 == 4){
		imgName2="./img/4.jpg";
	} else if(d2 == 5){
		imgName2="./img/5.jpg";
	} else if(d2 == 6){
		imgName2="./img/6.jpg";
	}
%>
	<div>
		<img src="<%=imgName1%>" width="200" height="200">
		<img src="<%=imgName2%>" width="200" height="200">
	</div>
	<div>
		주사위 합은 <%=d1+d2 %> 입니다.
	</div>
</body>
</html>