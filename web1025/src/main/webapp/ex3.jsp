<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int[] x = new int[5]; // 0,0,0,0,0
	x[0] = 2;
	x[1] = 5;
	x[2] = 3;
	x[3] = 7;
	x[4] = 10;
    
	System.out.println(x[0]);
	System.out.println(x[1]);
	System.out.println(x[2]);
	System.out.println(x[3]);
	System.out.println(x[4]);
	
	//foreach문
	for(int a : x){
		System.out.println(a);
	}// for(요소(a): 군집(x))  

	String[] names = null;
	names = new String[3];
	names[0] = "김설";
	names[1] = "김민송";
	names[2] = "김도희";
	for(String b : names){
		System.out.println(b);
	}
	
	int[] nums = {1, 2, 3, 4, 5, 6, 7, 8, 9};
	for(int c : nums){
		if(c%2 == 0 ){
		System.out.println(c);
		}
	} // 9개 반복문으로 전체실행되지만 안에 조건인 짝수인경우만 출력
%>
