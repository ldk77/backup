<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	//변수
	//정수 타입
	// 1) byte x : 1byte 
	byte a;
	a = 10;
	a = 7;
	// a = 200;	
	// 2) short : 2byte
	short b; 
	b = 200;	
	//3) int : 4byte
	int c; 
	c= 100;	
	//4) long : 8byte 
	long d; 
	
	d= 1000L;
			
	// 실수타입
	// 5) float : 4byte 
    
	float e = 1.3F ;
	
	// 6) double : 8byte
	double k = 3.4;
	
	int x ;
	double y ;
	
	x = 10; 
	y = 10.7;
	x=(int)y;
	
	// 7) boolean : 4byte 
  	boolean g;
	g = true;
	g = false;
	g = 1==10; // false
	g = 1>10 ; //false 
	g = 1<10; // true 
	g = false || true; // true
	g = true && false; // false
	g = 2>1 && 3>10; // false 
	
	// 8) char
	char h;
	h = 'A';
	
	// 기본타입 8가지만 값을 저장할수있음 
	
	//참조타입 
	String name = "good";
	System.out.println(name);
%>