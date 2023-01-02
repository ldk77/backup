<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "dao.*"%>
<%@ page import = "vo.*" %>
<%@ page import = "java.util.*" %>

<%
	StudentDao studentDao = new StudentDao();
	ArrayList<Student> list = studentDao.selectStudentList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for(Student s : list){
	%>
			<div>
				<%=s.studentId %>
				<%=s.familyName %>
				<%=s.name %>
				<%=s.birth %>
				<%=s.gender %>
				<%=s.city %>
				<%=s.updatedate %>				
				<%=s.createdate %>
			</div>
	<%		
		}
	%>
</body>
</html>