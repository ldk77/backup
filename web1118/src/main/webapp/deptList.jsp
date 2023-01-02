<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.*" %>
<%@ page import = "dao.*" %>
<%@ page import = "java.util.*" %>
<%
	//1) Controller
	int currentPage = 1;
	int rowPerPage = 5;	
	DeptDao deptDao =  new DeptDao();
	ArrayList<Dept> list = deptDao.selectDeptList(currentPage, rowPerPage); // 기존 디비연결후 구했는데 이번엔 selectDeptList매서드가 해줄거임
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>부서번호</th>
			<th>부서이름</th>
		</tr>
		<%
			for(Dept d : list){
		%>
				<tr>
					<td><%=d.getDeptNo()%></td>
					<td><%=d.getDeptName()%></td>
				</tr>
		<%		
			}
		%>
	</table>
</body>
</html>