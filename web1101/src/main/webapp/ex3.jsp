<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 반복문의 중복 
	
	String[] gender = {"남","여"};
	String[] ball = {"빨", "주", "노", "초", "파", "남", "보"};
	
	for(String g : gender){// 2번
		for(String b : ball){// 7번
			System.out.println(g + ":"+ b);
		}				
	}
	/*
		2*1=2 3*1=3...
		2*2=4 3*2=6... 
	*/
	for(int i=1; i<=9; i++) {
	
		for(int j=2; j<=9; j++) {
			System.out.print(j + "*" + i +"=" + j*i + "\t");
		}
		System.out.println();// 줄바꿈 
	}
%>
