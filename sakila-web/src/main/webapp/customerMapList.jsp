<%@page import="dao.*"%>
<%@page import="vo.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 페이징, map타입으로 리스트
	
	int currentPage = 1;
	if(request.getParameter("currentPage") != null) {
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
	}
	int rowPerPage = 10;
	int beginRow = (currentPage-1) * rowPerPage;
	
	// model 호출
	CustomerDao customerDao = new CustomerDao();
	ArrayList<HashMap<String, Object>> list = customerDao.selectCustomerMapList(beginRow, rowPerPage);
	
	// 마지막 페이지
	int cnt = customerDao.customerCount();
	int lastPage = (int)Math.ceil((double)cnt / (double)rowPerPage); 

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>customer Map List</title>
</head>	
	<body>
		<h1>customer Map List</h1>
		<!-- Map 타입 사용 -->
		<table border="1">
		 	<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>address</th>
				<th>district</th>
				<th>city</th>
				<th>country</th>
			</tr>
		 	<%
	 		for(HashMap<String, Object> m : list) {
	 		%>
	 			<tr>
					<td><%=m.get("firstName")%></td>
					<td><%=m.get("lastName")%></td>				
					<td><%=m.get("address")%></td>
					<td><%=m.get("district")%></td>
					<td><%=m.get("city")%> </td> 
					<td><%=m.get("country")%></td>
				</tr>

	 		<%
	 		}
		 	%>
		 </table>
		<div>
			<a href="<%=request.getContextPath()%>/customerMapList.jsp?currentPage=1">처음</a>
			<%
				if(currentPage > 1){
			%>
					<a href="<%=request.getContextPath()%>/customerMapList.jsp?currentPage=<%=currentPage-1%>">이전</a>
			<%
				}
				if(currentPage < lastPage){
			%>
					<a href="<%=request.getContextPath()%>/customerMapList.jsp?currentPage=<%=currentPage+1%>">다음</a>
			<%
			}
			%>
				<a class="text-decoration-none" href="<%=request.getContextPath()%>/customerMapList.jsp?currentPage=<%=lastPage%>">마지막</a>
		</div>
	</body>
</html>