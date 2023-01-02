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
	String sql = "select pname, page, pfruit, phome, pgender from pirate where pno = ?";	
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setInt(1, pno);	
	String pname = null;
	int age = 0;
	String pfruit = null;
	String phome = null;
	String pgender = null;
	ResultSet rs = stmt.executeQuery(); // 0행 or 1행
	if(rs.next()) {
		pname = rs.getString("pname");
		age = rs.getInt("page");
		pfruit = rs.getString("pfruit");
		phome = rs.getString("phome");
		pgender = rs.getString("pgender");
	}	
	// 3. 결과 출력	
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/updatePirateAction.jsp">
		<table border="1">
			<tr>
				<td>pno</td>
				<td><input type="text" name="pno" value="<%=pno%>" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>pname</td>
				<td><input type="text" name="pname" value="<%=pname%>"></td>
			</tr>
			<tr>
				<td>page</td>
				<td><input type="number" name="age" value="<%=age%>"></td>
			</tr>					
			<tr>
				<td>pfruit</td>
				<td><input type="text" name="pfruit" value="<%=pfruit%>"></td>
			</tr>
			<tr>
				<td>phome</td>
				<td><input type="text" name="phome" value="<%=phome%>"></td>
			</tr>
			<tr>
				<td>pgender</td>
				<td><input type="text" name="pgender" value="<%=pgender%>"></td>
			</tr>			
		</table>
		<button type="submit">수정</button>
	</form>

</body>
</html>