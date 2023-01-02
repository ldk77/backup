<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	// 1) Controller
	//session 유효성 검증 코드 후 필요하다면 redirect!
	Object objLoginEmp = session.getAttribute("loginEmp");
	Employee loginEmp = (Employee)objLoginEmp;
	
	int currentPage = 1;
	if(request.getParameter("currentPage") != null) {
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
	}
	
	String sort = "ASC";
	if(request.getParameter("sort") !=null && request.getParameter("sort").equals("DESC")) {
		sort = "DESC";
	}
	 
	// 2) Model
	int rowPerPage = 10;
	// beginRow 알고리즘 코드
	int beginRow = (currentPage-1)*rowPerPage;
	int cnt = 0;
	// lastPage 알고리즘 코드
	
	// 사원목록
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/employees", "root", "java1234");
	
	String sql = "SELECT emp_no empNo, first_name firstName, last_name lastName FROM employees ORDER BY first_name ASC LIMIT ?,?";
	if(sort.equals("DESC")) {
		sql = "SELECT emp_no empNo, first_name firstName, last_name lastName FROM employees ORDER BY first_name DESC LIMIT ?,?";
	}
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setInt(1, beginRow);
	stmt.setInt(2, rowPerPage);
	ResultSet rs = stmt.executeQuery();
	
	//page 
	String cntSql = "SELECT COUNT(*) cnt FROM employees";
	PreparedStatement cntStmt = conn.prepareStatement(cntSql);
	ResultSet cntRs = cntStmt.executeQuery();
	if(cntRs.next()){
		cnt = cntRs.getInt("cnt");
	}
	int lastPage = (int)(Math.ceil((double)cnt/(double)rowPerPage));	
	
	ArrayList<Employee> list = new ArrayList<Employee>();
	while(rs.next()) {
		Employee e = new Employee();
		e.setEmpNo(rs.getInt("empNo"));
		e.setFirstName(rs.getString("firstName"));
		e.setLastName(rs.getString("lastName"));
		list.add(e);
	}
	
	// 3) View
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empList</title>
</head>
<body>
	<div>
		<%=loginEmp.getLastName()%>(<%=loginEmp.getEmpNo()%>)님 반갑습니다.
		<a href="<%=request.getContextPath()%>/logout.jsp">로그아웃</a>
	</div>
	<h1>사원목록</h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>
				이름(firstName)
				<%
					if(sort.equals("ASC")) {
				%>
						<a href="<%=request.getContextPath()%>/empList.jsp?currentPage=<%=currentPage%>&sort=DESC">[내림차순]</a>				
				<%		
					} else {
				%>
						<a href="<%=request.getContextPath()%>/empList.jsp?currentPage=<%=currentPage%>&sort=ASC">[오름차순]</a>								
				<%		
					}
				%>
			</th>
			<th>
				이름(lastName)
			</th>
		</tr>
		<%
			for(Employee e : list) {
		%>
				<tr>
					<td><%=e.getEmpNo()%></td>
					<td><%=e.getFirstName()%></td>
					<td><%=e.getLastName()%></td>
				</tr>
		<%
			}
		%>
	</table>
	<!-- 페이징 -->
	<div>
		<a href="<%=request.getContextPath()%>/empList.jsp?currentPage=1">처음</a>
		<% 
			if(currentPage>1){
		%>
				<a href="<%=request.getContextPath()%>/empList.jsp?currentPage=<%=currentPage-1%>">이전</a>
		<%		
			}
		%>
				<a><%=currentPage %></a>
		<%
			if(currentPage < lastPage){
		%>
			<a href="<%=request.getContextPath()%>/empList.jsp?currentPage=<%=currentPage+1%>">다음</a>
		<%		
			}
		%>
			<a href="<%=request.getContextPath()%>/empList.jsp?currentPage=<%=lastPage%>">마지막</a>		
	</div>
</body>
</html>
