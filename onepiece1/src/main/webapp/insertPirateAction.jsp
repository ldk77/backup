<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	if(request.getParameter("pname") == null 
	|| request.getParameter("page") == null
	|| request.getParameter("pfruit") == null
	|| request.getParameter("phome") == null
	|| request.getParameter("pgender") == null) {
	
	response.sendRedirect(request.getContextPath()+"/insertPirateForm.jsp");
	return;
	}
	// 1. 요청분석
	request.setCharacterEncoding("utf-8");
	String pname = request.getParameter("pname");
	int page1 = Integer.parseInt(request.getParameter("page"));
	String pfruit = request.getParameter("pfruit");
	String phome = request.getParameter("phome");
	String pgender = request.getParameter("pgender");	
	
	
	// 2. 요청처리
		Class.forName("org.mariadb.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/onepiece","root","java1234");
		PreparedStatement stmt = conn.prepareStatement(
			"insert into pirate(pname, page, pfruit, phome, pgender) values(?,?,?,?,?)");
		stmt.setString(1, pname);
		stmt.setInt(2, page1);
		stmt.setString(3, pfruit);
		stmt.setString(4, phome);
		stmt.setString(5, pgender);
		
		stmt.executeUpdate();
		// 3. 결과출력
		response.sendRedirect(request.getContextPath()+"/pirateList.jsp");
%>
