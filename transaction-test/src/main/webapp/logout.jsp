<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	session.invalidate(); // 현재세션을 패기하고 새로운 새션을 부여받음 
	// --> 세션정보가 사라진다 -> 로그아웃 
	response.sendRedirect(request.getContextPath() + "/loginForm.jsp");
%>