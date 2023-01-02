<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%
	//2
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	String sql = "SELECT member_id memberID, member_pw memberPw FROM member";
	PreparedStatement stmt = conn.prepareStatement(sql);
	ResultSet rs = stmt.executeQuery();
	Member m = null;
	if(rs.next()){
		m = new Member();
		m.memberId = rs.getString("memberId");
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
	<h1>비밀번호수정</h1>
	<form action = "<%=request.getContextPath()%>/updateMemberPwAction.jsp">
	<table>
		<tr>
			<td>ID</td>
			<td>
				<input type = "text" name="memberId" value=<%=m.memberId%> readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>기존 비밀번호 입력</td>
			<td>
				<input type= "password" name="memberPw">
			</td>			
		</tr>
		<tr>
			<td>새로운 비밀번호 입력</td>
			<td>
				<input type= "password" name="memberNewPw">
			</td>			
		</tr>
		<tr>
			<td>
			<button type="submit">수정완료</button>
			</td>
		</tr>
	</table>
	</form>	
	<%
		if(request.getParameter("msg")!= null)
		{
	%>
			<div><%=request.getParameter("msg") %></div>
	<%		
		}
	%>
</body>
</html>