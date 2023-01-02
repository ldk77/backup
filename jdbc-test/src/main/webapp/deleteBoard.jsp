<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	// 1. 요청분석
	request.setCharacterEncoding("utf-8");
	int no = Integer.parseInt(request.getParameter("no"));
	
	//2, 요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	String sql = "delete from board Where no = ?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setInt(1, no);
	int row = stmt.executeUpdate();
	if(row == 1) {
		System.out.println("삭제성공");
	} else {
		System.out.println("삭제실패");
	}
	
	response.sendRedirect(request.getContextPath()+"/dept/boardList.jsp");
	// 3. 출력
%>