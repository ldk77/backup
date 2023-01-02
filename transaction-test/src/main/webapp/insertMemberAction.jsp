<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>
<%@ page import = "vo.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	// 정보가 null,공백일경우 리턴
	if(request.getParameter("memberId") == null || request.getParameter("memberPw") == null || request.getParameter("memberName") == null ||
	request.getParameter("memberId").equals("") || request.getParameter("memberPw").equals("") || request.getParameter("memberName").equals("")) {
	response.sendRedirect(request.getContextPath()+"/insertMemberForm.jsp");
	return;
	}		

	String memberId = request.getParameter("memberId");
	String memberPw = request.getParameter("memberPw");
	String memberName = request.getParameter("memberName");
	
	Member member = new Member();
	member.setMemberId(memberId);
	member.setMemberPw(memberPw);
	member.setMemberName(memberName);
	
	MemberDao memberDao = new MemberDao();
	int row = memberDao.insertMember(member);

	if(memberDao.checkMemberId(member.getMemberId())) { 
		System.out.println("중복된아이디입니다.!");		
		response.sendRedirect(request.getContextPath()+"/insertMemberForm.jsp");
		return;		
	} else if(row ==1) {
		// 중복되는 ID가 DB에 존재하지 않을 경우 -> 회원가입 진행
		System.out.println("회원가입성공!");	
		response.sendRedirect(request.getContextPath()+"/loginForm.jsp");
		return;		
	}
%>