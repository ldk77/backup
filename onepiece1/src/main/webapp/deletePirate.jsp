<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	//1. 요청 분석
	request.setCharacterEncoding("utf-8");	

	int pno = Integer.parseInt(request.getParameter("pno"));
	
	// 2. 요청 처리
	Class.forName("org.mariadb.jdbc.Driver"); 		
	// 접속
	Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/onepiece", "root", "java1234");
	String sql = "delete from pirate where pno = ?;";	
	PreparedStatement stmt = conn.prepareStatement(sql);
	
	
	stmt.setInt(1, pno);	
	int row = stmt.executeUpdate();	
	// 디버깅
	if (row == 1) {
		System.out.println("삭제 성공");
	} else {
		System.out.println("삭제 실패");
	}
	
	// 3. 결과 출력	
	response.sendRedirect(request.getContextPath()+"/pirateList.jsp");
%>