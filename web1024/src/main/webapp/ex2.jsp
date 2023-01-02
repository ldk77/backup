<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 참조타입(String, 배열, Class)
	// String 
	
	String str = null; // null 의미 메모리의 0번지 아무것도 가르키지않는 뜻?
	str = "구디";  // 구디는 값이아니므로 참조값 
	System.out.println(str);// 참조값이 출력되어야 하지만 String은 참조값이아니라 문자열이 출력
	// 참조값과 비슷하게 출력하려면 hashcode()0
	System.out.println(str.hashCode());

	// 배열 (참조타입)
	//String == char[]
	
	int[] arr = {2, 7, 10}; // 0,1,2 0부터시작
	System.out.println(arr);
	System.out.println(arr[1]); // 참조연산자 arr.0
	//System.out.println(arr[3]); 배열길이를 초과하여 예외가 발생하는 코드
	
	int[] arr2 = new int[4]; // new int[4] <--new 연산자식 (객체를 만들때 사용)
	System.out.println(arr2);
	System.out.println(arr2[2]);
	System.out.println(arr2[3]); // new연산자는 객체를 생성할때 각각의 객체멤버변수의 값을 초기화 한다 ex)숫자는 0

	arr2[0] = 7;
	arr2[1] = 3;
	arr2[2] = 100;
	arr2[3] = 50;
	//arr2[4] = 11; 배열길이를 초과하여 예외가 발생하는 코드
	System.out.println(arr2[2]);
	
%>