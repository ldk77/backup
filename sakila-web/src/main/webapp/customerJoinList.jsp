<%@page import="dao.*"%>
<%@page import="vo.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//페이징, 도메인 타입으로 리스트
	int currentPage = 1;
	if(request.getParameter("currentPage") != null) {
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
	}
	int rowPerPage = 10;
	int beginRow = (currentPage-1) * rowPerPage;
	
	// model 호출
	CustomerDao customerDao = new CustomerDao();
	ArrayList<CustomerAddressCityCountry> list = customerDao.selectCustomerJoinList(beginRow, rowPerPage);
	
	// 마지막 페이지
	int cnt = customerDao.customerCount();
	int lastPage = (int)Math.ceil((double)cnt / (double)rowPerPage); 

%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>customer Join List</title>
	</head>
	
	<body>
		<h1>customer Join List</h1>
		<!-- Domain 타입 사용 -->
		 <table border="1">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>이메일</th>
				<th>주소지</th>
				<th>도시</th>
				<th>나라</th>
			</tr>
		 	<%
	 		for(CustomerAddressCityCountry cacc : list) {
	 		%>
	 			<tr>
	 				<td><%=cacc.getCustomer().getFirstName() %></td> 
	 				<td><%=cacc.getCustomer().getLastName() %></td>
	 				<td><%=cacc.getCustomer().getEmail() %></td>	 				
	 				<td><%=cacc.getAddress().getAddress()%></td> 					
 					<td><%=cacc.getCity().getCity()%></td>
 					<td><%=cacc.getCountry().getCountry()%></td>
	 			</tr>
	 		<%
	 		}
		 	%>
		 </table>
		<div>
			<a href="<%=request.getContextPath()%>/customerJoinList.jsp?currentPage=1">처음</a>
			<%
				if(currentPage > 1){
			%>
					<a href="<%=request.getContextPath()%>/customerJoinList.jsp?currentPage=<%=currentPage-1%>">이전</a>
			<%
				}
				if(currentPage < lastPage){
			%>
					<a href="<%=request.getContextPath()%>/customerJoinList.jsp?currentPage=<%=currentPage+1%>">다음</a>
			<%
			}
			%>
				<a class="text-decoration-none" href="<%=request.getContextPath()%>/customerJoinList.jsp?currentPage=<%=lastPage%>">마지막</a>
		</div>
	</body>
</html>