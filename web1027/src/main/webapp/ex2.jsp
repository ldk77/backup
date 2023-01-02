<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.Student" %> <!-- 소스코드 내에서 Student는 vo.student 로표현가능 --> <!-- import를 사용하면 클래스네임으로만 표현가능 -->
<%
	Student ks = null; // 객체변수, 참조변수
	ks = new Student(); // 객체생성, 참초객체생성 
	// 모양은 똑같은데 입력값이다른것을 오버로딩 ex) add[1],add[1,2] ,new연산자는 객체를 만들고 초기화값을 넣음
	ks.name = "김설";
	ks.age = 29;
	ks.gender = "여자";
	
	
	System.out.println(ks);
	System.out.println(ks.gender); // . : 객체참조연산자, [] : 배열참조연산자 ex) 변수이름. , 변수이름 []
	System.out.println(ks.name);
	
%>