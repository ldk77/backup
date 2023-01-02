<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "vo.*" %>
<%@ page import = "java.net.URLEncoder" %>
<%
	//1.요청분석
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	String memberPw = request.getParameter("memberPw");
	String memberName = request.getParameter("memberName");
	if(memberId.equals("") || memberPw.equals("") || memberName.equals("")){
		String msg = URLEncoder.encode("ID와PW를 입력하세요","UTF-8");
		response.sendRedirect(request.getContextPath()+"/insertMemberForm.jsp?msg="+msg);
		return;
	}
	
	//2.요청처리 
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	//2-1 중복x
	String idSql = "SELECT member_id FROM member WHERE member_id = ?"; // id 중복안되게
	PreparedStatement idStmt = conn.prepareStatement(idSql);
	idStmt.setString(1, memberId);
	ResultSet rs = idStmt.executeQuery();
	if(rs.next()){
		//System.out.println("아이디 중복");		
		String msg = URLEncoder.encode("ID가 중복되었습니다.","UTF-8");
		response.sendRedirect(request.getContextPath()+"/insertMemberForm.jsp?msg="+msg);
		rs.close();
		idStmt.close();
		return;
	} 	
	// 2-2
	String sql = "INSERT INTO MEMBER(member_id , member_pw, member_name) VALUES(?, PASSWORD(?), ?)";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, memberId);
	stmt.setString(2, memberPw);
	stmt.setString(3, memberName);
	stmt.executeUpdate();
	//3.결과출력
	response.sendRedirect(request.getContextPath()+"/loginForm.jsp");
	
	stmt.close();
	conn.close();
%>
