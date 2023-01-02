<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
	// for문은 고정된 횟수 진행
	for(int i=0; i<3; i++){
		System.out.println("for");
	}

	//while문은 조건에 따른 반복
	int i = 1; 
	while(i<5){
		System.out.println("while");
		i++;
	}
	
	//무한루프
	int a = 0;
	for(;;){
		System.out.println("for무한루프");
		a++;
		if(a == 100){
			break;
		}
	}
	//무한루프 뒤에는 코드를 사용할수없음
	int b = 0;
	while(true){
		b++;
		if(b%2 == 1){
			continue;
		}
		
		if(b == 10){
			break;
		}
		System.out.println("while무한루프"+b);
			
	}
	boolean c = false;
	while(c){
		System.out.println("while test");
	} //실행안됨
	
	do {
		System.out.println("do...while test");
	} while(c); // do while문은 조건에맞지않더라도 1회는 실행 
%>
