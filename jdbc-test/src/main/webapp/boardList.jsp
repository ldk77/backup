<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.ResultSet"%>
<%
	// 1. mariadb 드라이버 로딩(mariadb와 관련된 API 사용할 수 있도록)
	Class.forName("org.mariadb.jdbc.Driver"); // 매개변수값으로(문자열) mariadb사용에 필요한 클래스 풀네임 입력
	System.out.println("드라이버 로딩 성공");
	
	// 2. 연결(접속)
	Connection conn = DriverManager.getConnection(
				"jdbc:mariadb://127.0.0.1:3306/gdj58","root","java1234");
	System.out.println(conn + " <-- conn");
	// 접속한 데이터베이스에 쿼리를 만들때 사용하는 메서드
	PreparedStatement stmt = conn.prepareStatement(
		"select no, category, title, content, create_date from board order by no desc limit 0, 20");
	// 쿼리를 실행 사용하는 메서드
	ResultSet rs = stmt.executeQuery(); // ResultSet 배열같은 자료 구조
	
%>
<!DOCTYPE html>
<html>
<head>		
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>	
</head>
<body>
	<div class = "container">
		<table class ="table">
			<thead>
				<tr>
					<td>No</td>
					<td>CATEGORY</td>
					<td>TITLE</td>
					<td>CONTENT</td>
					<td>CREATE DATE</td>
					<td>수정</td>
					<td>삭제</td>					
				</tr>
			</thead>
			<tbody>
				<%
					while(rs.next()){
				%>
					<tr>
						<td><%=rs.getInt("no") %></td>
						<td><%=rs.getString("category") %></td>
						<td><%=rs.getString("title") %></td>
						<td><%=rs.getString("content") %></td>
						<td><%=rs.getString("create_date") %></td>
						<td>
							<!-- updateBoardForm.jsp 수정입력폼 select ... where key
								 updateBoardAction.jsp 수정액션 update ... where key
							 -->
							<a href="<%=request.getContextPath()%>/updateBoardForm.jsp?no=<%=rs.getInt("no")%>">
                           	수정
                       		</a>
                     	</td>
						<td>
                        	<a href="<%=request.getContextPath()%>/deleteBoard.jsp?no=<%=rs.getInt("no")%>">
                           	삭제
                        	</a>
                     </td>
					</tr>		
				<%		
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>