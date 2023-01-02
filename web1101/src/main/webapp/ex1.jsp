<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if(5>3) {//(blooean값 or blooean 표현식)
	System.out.println("출력1");
}

	//값분기 (등호 연산자) 
	int a = 3;
	if(a == 3){
		System.out.println("출력2");
	}
	
	boolean b =false;
	if(b == false ){
		System.out.println("출력3");		
	}
	
	int c = 2;
	switch(c%2){
	case 1:
		System.out.println("홀수");
		break;
	case 0:
		System.out.println("짝수");
	default:
		System.out.println("에러!");
	}
	
	String sn = "0001225-41234123";
	String genderChar = sn.substring(7, 8);
	switch(genderChar) {
	case "1":
		System.out.println("1남자"); break;
	case "2":	
		System.out.println("2여자"); break;
	case "3":
		System.out.println("3남자"); break;
	case "4":
		System.out.println("4여자"); break;
	case "5":
		System.out.println("5남자"); break;
	case "6":
		System.out.println("6여자"); break;
	case "7":
		System.out.println("7남자"); break;
	case "8":
		System.out.println("8여자"); break;
	case "9":
		System.out.println("9남자"); break;
	case "0":
		System.out.println("0여자"); break;
	}

%>
