<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "vo.*" %>
<%
	//1 요청분석
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	String memberPw = request.getParameter("memberPw");
	//2  요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	String sql = "DELETE FROM MEMBER WHERE member_id=? AND member_pw = PASSWORD(?)";
	PreparedStatement stmt =conn.prepareStatement(sql);	
	stmt.setString(1, memberId);
	stmt.setString(2, memberPw);
	stmt.executeUpdate();
	
	response.sendRedirect(request.getContextPath()+"/logout.jsp");
%>