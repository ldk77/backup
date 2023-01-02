<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
	int score = 72;
	if(score>=80 && score<90){
		System.out.println("B학점");
	}
	else if (score>=90){
		System.out.println("A학점");
	} 
	else if (score>=70 && score<80){
		System.out.println("C학점");
	}else if (score<70){
		System.out.println("F학점");	
	}
	
	for(int i = 0; i<=10; i++){
		if(i%2 == 0) {
			System.out.println(i);
		}
	}
	for(int i =0; i<5; i++){
		for(int j =0; j<3; j++){
			if(i ==2 ){
				continue;
			}
			if(j ==1 ){
				break;
			}
			System.out.println("A");
		}
		
	}
%>