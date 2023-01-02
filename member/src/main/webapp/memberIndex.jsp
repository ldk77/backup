<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%
	// 1
	if(session.getAttribute("loginMemberId") == null) {
		// 로그인 되지 않은 상태
		response.sendRedirect(request.getContextPath()+"/loginForm.jsp");
		return;
	}
	//2
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	String sql = "SELECT member_id memberID, member_name memberName,member_pw memberPw FROM member";
	PreparedStatement stmt = conn.prepareStatement(sql);
	ResultSet rs = stmt.executeQuery();
	Member m = null;
	if(rs.next()){
		m = new Member();
		m.memberId = rs.getString("memberId");
		m.memberName = rs.getString("memberName");
		m.memberPw = rs.getString("memberPw");
	}
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%=(String)(session.getAttribute("loginMemberId"))%>님 반갑습니다.
		<a href="<%=request.getContextPath()%>/memberOne.jsp">내정보</a>
		<a href="<%=request.getContextPath()%>/logout.jsp">로그아웃</a>
	</div>
	<h1>멤버 페이지 입니다</h1>
	<table>
		<tr>
			<td>ID</td>
			<td>
				<input type = "text" name="memberId" value=<%=m.memberId%> readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>기존 이름</td>
			<td>
				<input type = "text" name="memberName" value=<%=m.memberName%> readonly="readonly">
			</td>
		</tr>		
	</table>
</body>
</html>
