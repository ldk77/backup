<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%
	// 1. 요청 분석
	int no = Integer.parseInt(request.getParameter("no"));
	
	// 2. 요청 처리
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	String sql = "select category, title, content, create_date createDate from board where no = ?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setInt(1, no);
	ResultSet rs = stmt.executeQuery(); // 0행 or 1행
	String category = null;
	String title = null;
	String content = null;
	String createDate = null;
	if(rs.next()) {
		category = rs.getString("category");
		title = rs.getString("title");
		content = rs.getString("content");
		createDate = rs.getString("createDate");
	}
	
	// 3. 출력
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/updateBoardAction.jsp">
		<table border="1">
			<tr>
				<td>no</td>
				<td><input type="text" name="no" value="<%=no%>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>category</td>
				<td><input type="text" name="category" value="<%=category%>"></td>
			</tr>
			<tr>
				<td>title</td>
				<td><input type="text" name="title" value="<%=title%>"></td>
			</tr>
			<tr>
				<td>content</td>
				<td><textarea name="content" rows="5" cols="80"><%=content%></textarea></td>
			</tr>
			<tr>
				<td>createDate</td>
				<td><input type="text" name="createDate" value="<%=createDate%>" readonly="readonly"></td>
			</tr>
		</table>
		<button type="submit">수정</button>
	</form>
</body>
</html>
