<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%@ page import="vo.*"%>
<%
	//1 요청분석
	request.setCharacterEncoding("utf-8");	
	String memberNewName = request.getParameter("memberNewName");
	String memberId = request.getParameter("memberId");
	String memberPw = request.getParameter("memberPw");
	
	if(memberId.equals("") || memberPw.equals("") || memberNewName.equals("")){
		String msg = URLEncoder.encode("입력하세요","UTF-8");
		response.sendRedirect(request.getContextPath()+"/insertMemberForm.jsp?msg="+msg);
		return;
	}
	
	System.out.println(memberId);
	//2.요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");	
	String sql1 = "UPDATE MEMBER SET member_name = ? WHERE member_id= ? AND member_pw=PASSWORD(?)";
	PreparedStatement stmt1 =conn.prepareStatement(sql1);
	stmt1.setString(1, memberNewName);
	stmt1.setString(2, memberId);
	stmt1.setString(3, memberPw);
	
	int row = stmt1.executeUpdate();
	if(row == 1){
		System.out.println("수정 성공");
	}else {			
		String msg =URLEncoder.encode("비밀번호를 확인하세요", "utf-8");
		response.sendRedirect(request.getContextPath()+"/updateMemberForm.jsp?msg="+msg);
		System.out.println("비밀번호를 확인하세요");
		return;
	}
	
	
	response.sendRedirect(request.getContextPath()+"/memberOne.jsp");	

%>
