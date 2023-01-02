<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 제어문 : 코드는 위에서 아래로 진행되면서 실행하는게 기본원리인데 ->제어문을 만나면 1)분기란 건너뛰기 2)반복
	// 1)분기 if...else, switch....case, try...catch...finally
	// 2)반복 while, for(초기값;조건;종강), foreach for(요소변수;집합) <==readonly
	// 제어문과 관련 키워드 : break(탈출), continue (건너뛰어 다음으로) <--잘안쓰임
	
	int x= -3;
	if (x>0) { //if(표현식) : 표현식은 조건분기 , 값분기 (==, equals())
		System.out.println("양수");	
	} else if(x<0){
		System.out.println("음수");
	} else {
		System.out.println("0입니다");
	}	
	
	int y = 7;
	int evenOdd = y % 2; // 1 or 2
	switch(evenOdd){  // switch() ()안에 꼭값이와야함 if(표현식) : 표현식 값분기
	case 0:
		System.out.println("짝수");
		break; // switch문 블럭을 탈추
	case 1:
		System.out.println("홀수");
		break;
	default: //default 는 if문에서 else문과 유사함
		System.out.println("error!");	
	}
	// swith 는 if문으로 대체가능하다 그러나 반대는 힘들다 안되는것은아님 
	if(evenOdd == 0) {
		System.out.println("짝수");
	} else if (evenOdd == 1) {
		System.out.println("홀수");
	} else {
		System.out.println("error!");	
	}
	 
	
	// while문 조건에 만족할떄까지 반복함 
	int z = 7;
	while(z<10) {
		System.out.println(z);
		z = z + 1;
	}
	
	//for문 횟수가 정해져 있을떄 
	for(int i=0; i<3; i=i+1){//3번실행함
		System.out.println("hello");		
	}
	
	// foreach문 집합체가 있을때
	String[] gdj58 = new String[3];
	gdj58[0] = "황현정";
	gdj58[1] = "최정현";
	gdj58[2] = "최은서";
	for(String s : gdj58){ // s변수는 요소값이 복사된후 사용되기 떄문에 주로 읽기전용임
		System.out.println(s);	
	}
	
	int a = 1;
	while(a>0) {
		System.out.println(a);
		a = a+1; // a+=1
		if(a ==17 ){
			break; //break 는 스위치문이나 반복문(for,while)만 탈출
		}
	}
	
	for(int b=0; b<10; b=b+1) {
		if(b == 5 ){
			continue; // 5일경우 컨티뉴로 건너뛰고 다음거실행
		}
		System.out.println(b);
		
	}
%>