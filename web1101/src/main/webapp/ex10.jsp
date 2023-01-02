<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "bo.TestBo" %>
<%
	TestBo.greet();
	// Math.random();
	// 보통 앞에 대문자 static 매서드
	
	// TestBo.bye(); 사용안됨 why? 일반매서드는 객체형태로 사용해야함
	TestBo testBo =  new TestBo();		
	testBo.bye();
	// request.getParameter(""); 
	// 보통 앞에 소문자가오면 일반매서드
%>