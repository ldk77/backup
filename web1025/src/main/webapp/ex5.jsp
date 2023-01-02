<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 조건문 : 블럭안의 코드를 실행 or 실행x
	// 반복문 : 블럭안의 코드를 몇번 실행

	// foreach문 : 몇번? 제공되는 집합의 길이(개수)
			
	//for문, while문 : 몇번? 조건에 만족할때 까지

	for(int i=0; i<5; i=i+1){ // i++, ++i, i+=1
		System.out.println("실행");// 5번
	}
	//System.out.println(i); i변수는 {}안에서 끝
	
	for(int a=0; a<3; a=a+1){
		System.out.print(a + " ");
	} // 숫자 + 문자열 자바에서는 숫자를 문자열로 변경하여 연산 
	 	//ex) 1+ "test" -> "1" + "test" = "1test"
	 System.out.println("");	
	 for(int i = 10; i>0; i=i-1){//뭐가 출력되는것보다 몇번이 출력되는지 중요
		 System.out.print(i+" ");
	 }
%>