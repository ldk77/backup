<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//1부터 10까지 출력
	for(int i=0; i<10; i=i+1){
		System.out.println(i+1);
	}

	for(int i=1; i<=10; i=i+1){
		System.out.println(i);
	}
	
	for(int i=1; i<11; i=i+1){
		System.out.println(i);
	}
	
	// 1부터 10까지 짝수만 출력
	for(int i=0; i<=10; i=i+2){// 이러면 10번반복이아니라 5번반복
		System.out.println(i);
	}
	
	for(int i=1; i<=10; i=i+1){
		if(i%2 == 0) {
		System.out.println(i);
		}
	}
	
	for(int i=1; i<=10; i=i+1){
		if(i%2 == 1){
			System.out.println(i);
		}
	}
	
	// 1부터 10까지 합
	int sum = 0;
	for(int i=1; i<=10; i=i+1){
		sum = sum + i; // sum+=i;같은표현
	}
	System.out.println("sum :" + sum);
	
	// for중첩
	for(int i=0; i<3; i=i+1){
		for(int j=0; j<3; j=j+1){
			System.out.println("실행");
		}
	}
	
	// 012012012
	for(int i=0; i<3; i=i+1){//3 번실행
		for(int j=0; j<3; j=j+1){
			System.out.println(j); //012
		}	
	}
	
	for(int i=0; i<9; i=i+1) {
		System.out.println(i%3);
	}
	
%>
