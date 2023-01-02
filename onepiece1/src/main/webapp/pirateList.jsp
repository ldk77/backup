<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet"%>

<%
Class.forName("org.mariadb.jdbc.Driver");
// 디버깅
System.out.println("드라이버 로딩 성공");
Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/onepiece","root","java1234");
// 디버깅
System.out.println(conn + " <-- conn");
PreparedStatement stmt = conn.prepareStatement(	"select pno, pname, page, pfruit, phome, pgender from pirate order by pno desc limit 0, 20");
ResultSet rs = stmt.executeQuery();
/*디버깅
while(rs.next()) {
	System.out.println(rs.getInt("pno") + " "+ rs.getString("pname") + " " + rs.getInt("page") + " " + rs.getString("pfruit") + " " + rs.getString("phome"));
}*/
%>
<!DOCTYPE html>
<html>
<head>
<style> 
	h2,div,table, tr, td {text-align : center;}	
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>ONEP</title>
</head>	
	<body>
	<div class="container mw-100 p-5 my-5 bg-dark text-white">
		<h2>ONEPIECE</h2>
		
		<table class="table table-bordered table-dark table-striped"">
			<thead>
				<tr>
					<th class="text-primary">PNO</th>
					<th class="text-primary">PNAME</th>
					<th class="text-primary">PAGE</th>
					<th class="text-primary">PFUIT</th>
					<th class="text-primary">PHOME</th>
					<th class="text-primary">PGENDER</th>
					<th class="text-primary">MODIFY</th>
					<th class="text-primary">DELETE</th>
				</tr>
			</thead>
			<tbody>
				<%
					while(rs.next()) {
				%>
						<tr>
							<td><%=rs.getInt("pno")%></td>
							<td><%=rs.getString("pname")%></td>
							<td><%=rs.getInt("page")%></td>
							<td><%if(rs.getString("pfruit").equals("Y")){
							%>
								<span>&#128121;</span>
							<%	
							} else {
							%>
								<span>&#10060;</span>
							<%
							}
							%>
							</td>
							<td><%=rs.getString("phome")%></td>
							<td>
							<%if(rs.getString("pgender").equals("남")){
							%>	
								<span>&#128104;</span>							
							<%
							}  else {
							%>	
								<span>&#x1F469;</span>
							<%	
							}
							%> 
							</td>
							<td>
								<a href="<%=request.getContextPath()%>/updatePirateForm.jsp?pno=<%=rs.getInt("pno")%>">
                           		modify
                       			</a>
							</td>
							<td>
								<a href = "<%=request.getContextPath()%>/deletePirate.jsp?pno=<%=rs.getInt("pno")%>">
								delete
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