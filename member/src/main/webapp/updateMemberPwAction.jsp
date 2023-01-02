<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%@ page import="vo.*"%>
<%
	//1
	request.setCharacterEncoding("utf-8");	
	String memberPw = request.getParameter("memberPw");
	String memberNewPw = request.getParameter("memberNewPw");
	String memberId = request.getParameter("memberId");
	
	//2.요청처리 
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	String sql = "UPDATE MEMBER SET member_pw = PASSWORD(?) WHERE member_id= ? AND member_pw = PASSWORD(?)";
	PreparedStatement stmt =conn.prepareStatement(sql);
	stmt.setString(1, memberNewPw);
	stmt.setString(2, memberId);
	stmt.setString(3, memberPw);
	
	int row = stmt.executeUpdate();
	if(row == 1){
		System.out.println("비밀번호수정 성공");
	}else {
		//비밀번호가 다를시
		String msg =URLEncoder.encode("비밀번호를 확인하세요", "utf-8");
		response.sendRedirect(request.getContextPath()+"/updateMemberPwForm.jsp?msg="+msg);
		System.out.println("비밀번호를 확인하세요");
		return;
	}
	
	response.sendRedirect(request.getContextPath()+"/memberOne.jsp");	

%>
