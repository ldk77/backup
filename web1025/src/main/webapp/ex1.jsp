<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//논리연산자 -> 결과물 boolean -> if문 조건에 많이 사용된다.
System.out.println(true && true); // t
System.out.println(7>5 && 10 == 10); // t
System.out.println(true && false); // f
System.out.println(1>0 && 10%2 == 1 ); // f
System.out.println(false && true); // f
System.out.println(false && false); //f

System.out.println(true || true); // t
System.out.println(true || false); // t
System.out.println(1>0 || 10%2 == 0); // t
System.out.println(false || true); // t
System.out.println(false || false); // f
%>