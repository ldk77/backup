<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import = "vo.*" %>
<%@ page import ="dao.*"%>
<%
	// 유효성 검사 : 이 페이지 코드 계속 실행할건지 
	// 로그인 되어있지않으면 로그인페이지로 
	if(session.getAttribute("loginMember") == null){
		//이미 로그인 되어있으니 웹브라저에서 다시 main.jsp 재요청
		response.sendRedirect(request.getContextPath()+"/loginForm.jsp" );
		return; 
	}
	
	// 로그인 되어있다면 세션정보를 가져온다
	//session.getAttribute("loginMember");
	Member loginMember = (Member)(session.getAttribute("loginMember"));
	
	MemberDao memberDao = new MemberDao();
	int row = memberDao.deleteMember(loginMember.getMemberId());
	if(row==2){//탈퇴성공
		System.out.println("탈퇴성공!");
		session.invalidate();
		response.sendRedirect(request.getContextPath()+"/loginForm.jsp");
	} else{//탈퇴실패
		System.out.println("탈퇴실패!");
		response.sendRedirect(request.getContextPath()+"/main.jsp");		
	}
%>