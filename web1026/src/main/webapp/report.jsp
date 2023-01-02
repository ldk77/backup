<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%     
	
	int num = 15; //학생 번호
	
	int leader = 0; // 팀장번호	
	
	if(num>10){
		leader = (int)((num/10)*10+1);
		System.out.println("팀장번호 : " + leader);
		} else {
			System.out.println("팀장번호 : 1");
	}

%>
	
<%
	int num1 = 3;
	if(num1 %2 == 0) {
		System.out.println("짝수");
	} else {
		System.out.println("홀수");
	}
%>

<%
	int num2= 3;
	if (num2>0) { 
		System.out.println("양수");	
		} else if(num2<0){
		System.out.println("음수");
		} else {
		System.out.println("0");
	}	
%>
<%
	int oneAge = 21 ;
	int twoAge = 27 ;
	if ((20<=oneAge && 30>oneAge)&&(20<=twoAge && 30>twoAge)){
		System.out.println("출입");
	} else {
		System.out.println("출입금지");
	}
%>
<%
	int i = 0;
	for (i=1; i<=50; i=i+1){
		if(i%5 == 0){
			System.out.println(i);
		}
	}
%>

<%
	int num3 = 0;	
	int a =0;
	for (a=0; a<10; a=a+1){
		if(a%2 == 1){
			num3 = num3 + a;			
		}		
	}
		System.out.print(num3);
%>
<%
	int y = 0;	
	for (y=2014; y<=2500; y=y+1){
		if((y%4 ==0 && y%100 !=0) || y%400 == 0);{
			System.out.println("윤년 :"+y);	
		
		}
	}
%>
<%
	int f= 30;
	int num4 = 0;
	for(i=1; i<=f; i=i+1){
		if(f%i == 0 && f>1){
			System.out.println(f);
		}
	}
	

%>

