<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>
<%@ page import = "vo.*" %>
<%
	// 유효성 검사 : 이 페이지 코드 계속 실행할건지 
	// 로그인 되어있다면 이 페이지는 실행 X 
	if(session.getAttribute("loginMember") != null){
		//이미 로그인 되어있으니 웹브라저에서 다시 main.jsp 재요청
		response.sendRedirect(request.getContextPath()+"/main.jsp" );
		return; 
	}

	String memberId = request.getParameter("memberId");
	String memberPw = request.getParameter("memberPw");
	Member paramMember = new Member();
	paramMember.setMemberId(memberId);
	paramMember.setMemberPw(memberPw);
	
	MemberDao memberDao = new MemberDao();
	Member member = memberDao.login(paramMember);
	
	if(member == null){
		//로그인 실패
		response.sendRedirect(request.getContextPath()+"/loginForm.jsp");
	} else {
		//로그인 성공
		session.setAttribute("loginMember", member);
		response.sendRedirect(request.getContextPath()+"/main.jsp");
	}
	
%>