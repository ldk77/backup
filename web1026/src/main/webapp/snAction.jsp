<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sn = request.getParameter("sn1")+request.getParameter("sn2");
	/*
	//문자는 ()까지해야 길이나옴	
	if(sn.length() !=13) {
		<h1>잘못된 주민번호</h1>			
	} else {
		
	}
	*/
	//블럭을 줄이는방법
	if(sn.length() !=13){
		System.out.println(sn+"는(은) 잘못된 주민번호입니다.");
		return;	//if문에 들어오지않으면 다음코드로 실행 리턴은 "실행종료"
	}
	
	// 1) 7번째 문자를 
	String genderChar = sn.substring(6, 7); // sn이라는 열에 6번째부터 7번째 앞의 문자를 자름 ->6번 문자자름 ex) .substring(6,10) 6,7,8,9 출력
	System.out.println(genderChar+"<-=genderChar");
	int genderNum = Integer.parseInt(genderChar);
	System.out.println(genderNum+"<--genderNum");
	String gender = "남자";
	if(genderNum%2 == 0 ){
		gender = "여자";
	}
	System.out.println(gender+"<--gender");

	java.util.Calendar today = java.util.Calendar.getInstance(); //오늘 날짜정보 리턴
	int todayYear = today.get(java.util.Calendar.YEAR); // 오늘 년도 2022
	// 생일 년도 2자리 구하기
	int birthYear = 0;
	String birthStr = sn.substring(0,2);
	// 생일 년도 앞 2자리구하기 <- genderNum이용
	if(genderNum == 0 || genderNum == 9){
		System.out.println("error!");	
	} else if(genderNum == 1 || genderNum == 2 || genderNum == 5 || genderNum == 6) {
		birthYear = Integer.parseInt("19"+birthStr);
	} else {
		birthYear = Integer.parseInt("20"+birthStr);
	}
	 
	
	int age = todayYear - birthYear; 
%>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=gender%>
	<%=age%>
</body>
</html>