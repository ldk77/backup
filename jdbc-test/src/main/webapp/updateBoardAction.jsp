<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	// ★★★★★  들여쓰기 / 주석 / 디버깅  ★★★★★
	
	// 1. 요청분석
	request.setCharacterEncoding("utf-8");
	int no = Integer.parseInt(request.getParameter("no"));
	String category = request.getParameter("category");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	
	// 2. 요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	String sql = "update board set category=?,title=?,content=? where no=?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, category);
	stmt.setString(2, title);
	stmt.setString(3, content);
	stmt.setInt(4, no);
	
	int row = stmt.executeUpdate();
	if(row == 1) {
		System.out.println("수정성공");
	} else {
		System.out.println("수정실패");
	}

	response.sendRedirect(request.getContextPath()+"/boardList.jsp");
	// 3. 출력
%>
