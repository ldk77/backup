<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int[] ball = new int[45];
	for(int i=0; i<ball.length; i=i+1){
		ball[i] = i+1;
	}
	/*
	for(int n : ball){
		System.out.print(n+" ");
	}
	System.out.println(""); // 줄바꿈
	*/
	
	// 2. 섞다(shuffle)
	
	for(int i=0; i<100000; i=i+1){
		
		//int r = 0; // 0~44
		int r = (int)(Math.random() * 45);
		int temp = ball[0];
		ball[0] = ball[r];
		ball[r] = temp;
	}
	
	for(int i=0; i<6; i=i+1){
		System.out.print(ball[i]+" ");
	}
%>
