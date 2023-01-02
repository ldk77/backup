<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	if(request.getParameter("category") == null 
		|| request.getParameter("title") == null
		|| request.getParameter("content") == null) {
		
		response.sendRedirect(request.getContextPath()+"/insertBoardForm.jsp");
		return;
	}
	
	// 1. 요청분석
	request.setCharacterEncoding("utf-8");
	String category = request.getParameter("category");
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	// 2. 요청처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	PreparedStatement stmt = conn.prepareStatement(
		"insert into board(category,title,content,create_date) values(?,?,?,curdate())");
	stmt.setString(1, category);
	stmt.setString(2, title);
	stmt.setString(3, content);
	// stmt.setInt(4, age);
	int row = stmt.executeUpdate();
	if(row == 1) {
		System.out.println("입력성공");
	} else {
		System.out.println("입력실패");
	}
	// 3. 결과출력
	response.sendRedirect(request.getContextPath()+"/boardList.jsp");
%>
