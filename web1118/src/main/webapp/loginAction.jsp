<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "service.*" %>
<%@page import = "vo.*" %>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//MemberService.loginBool(id,pw)
	MemberService memberService = new MemberService();
	boolean loginCheck =  memberService.loginBool(id, pw);
	if(loginCheck == false){
		System.out.println("로그인 실패");
	} else {
		System.out.println("로그인 성공");
	}
	//MemberService.loginMember(Member paramMember)
	Member paramMember = new Member();
	paramMember.setId(id);
	paramMember.setPw(pw);
	Member returnMember = memberService.loginMember(paramMember);
	if(returnMember == null){
		System.out.println("로그인 실패");
	} else {
		System.out.println("로그인 성공");
		//session.setAttribute("loginMember",returnMember);
	}
%>