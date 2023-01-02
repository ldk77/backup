<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int x =10; 
	int y =3;
	int z = 0;
	z = x + y;
	z = x - y;
	z= x * y;
	z= x/y; // int int 연산은 결과도 int 10/3 ->3 
	z = x%y; // 나머지 1
	
	int a= 5; 
	++a; // a = a+1;
	a++; // a = a+1;
	System.out.println(a); //7
	
	// 전치, 후치의 실행순서의 차이 
	int c = 7;
	System.out.println("++c(7): " + ++c); // 8
	System.out.println(c); // 8
	
	int d = 7;
	System.out.println("d++(7): " + d++); // 7
	System.out.println(d); //8
	
	int e =1;
	e = e + 7; // e += 7; 
	
	e = e + 1 ; // e += 1 ; ++e; e++;
	
	int f = 7;
	e = e + f; // e += f;
	
	//삼항연산자
	int score = 60;
	String result = null;
	result = score >= 70? "합격" : "불합격";
	System.out.println(result); 
	// 삼항연산자 -> if.... else문으로 표현 why? 읽기편하니까
	if(score >= 70) {
		result = "합격";
	} else {
		result = "불합격";
	}
	System.out.println(result);
%>
