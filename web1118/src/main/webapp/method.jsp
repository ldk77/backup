<%@page import="service.Gugu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<!-- 
	매서드 :
	1) 코드(여러 명령문)를 하나의 이름으로 묶어 놓은 것 -> 메서드의 이름 
	2) 입력값이 필요할 수 도 있다 -> 메서드의 매개변수값
	3) 반환값이 있을 수 도 있다  -> 메서드의 리턴값
	4) 매서드는 클래스(일반, static)안에 생성된다 
	5) 매서드 이름으로 호출
 -->
 <%
 	// 구구단을 출력하는 코드 
 	int dan = 2;
 	for(int i=1; i<10; i++){
 		System.out.println(dan + "*" + i + "=" + dan*i );
 	}
 	
 	//구구단을 출력하는 코드(dan이란 변수생성,반복문 for,출력,...여러가지명령)에 하나의 이름을 부여 -> 메서드를 만든다 
 	//-> 매서드를 만든다 -> GuGu클래스안에 일반 매서드 ->입력값,반환값 필요없음
 	//-> 호출
 	
 	//new service.Gugu().secondDan(); // 객체변수를 만들어서 호출하는게 -> 변수생성
 	/*
 	service.Gugu gugu = new sercice.Gugu(); // 클래스 풀네임 사용하기싫다 -> import
 	gugu.secondDan();		
 	*/
 	
 	Gugu gugu = new Gugu();
 	gugu.secondDan();
 	
 	//호출하는 곳(jsp)에 출력했으면 좋겠는데...
 	
 	String result = gugu.secondDanResult();
 	
 	//반환값을 좀더 세련된? 타입으로 
 	ArrayList<String> resultList = gugu.secondDanRseultList();
 	
 	ArrayList<String> resultList7 = gugu.secondDanRseultList(7);
 	
 %>
 <DOCTYPE html>
 <html>
 	<body>
 		<h2>gugu.secondDan</h2>
 		<%=result%>
 		<hr>
 		<h2>ArrayList<String> resultList</h2>
 		<%
 			for(String s :resultList){
 		%>
 			<%=s%><br>
 		<%		
 		}
 		%>
 		<hr>
		<h2>secondDanResultList(int dan)</h2>
		<%
			for(String s : resultList7) {
		%>
				<div><%=s%></div>
		<%		
			}
		%> 		
 	</body>
 </html>