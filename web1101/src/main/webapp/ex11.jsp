<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import = "bo.MethodTest" %>
<%@ page import = "bo.Greet" %>
<%@ page import = "vo.Person" %>
<%
	MethodTest mt = new MethodTest();
	
	int x = 10;
	int y = 7;
	int result = MethodTest.add(x,y);
	System.out.println(result);
	//1) void 리턴 매서드
	mt.m1();
	//2) 기본타입 리턴 
 	int a = mt.m2Int();
	System.out.println(a+ "<--a");
	boolean b = mt.m2Bool();
	System.out.println(b+"<--b");
	// 3) string 참조타입 리턴
	String name = mt.m3().substring(2, 5);
	System.out.println(name);
	// 4) 배열참조 리턴
	int[] arr = mt.m4();
	System.out.println(arr.length); // 3 
	// 5) ArrayList 리턴
	Greet greet = mt.m7();
	greet.hello();
	greet.hi();
	greet.bye();
	Greet g2 = null;
	//g2.bye(); // null point exception
	
%>
