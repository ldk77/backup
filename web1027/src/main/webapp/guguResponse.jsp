<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
	int dan = Integer.parseInt(request.getParameter("dan"));		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=dan%>단</h1>
	<table>
	
		<%
			for(int i=1; i<=9; i+=1){ // i=i+1			
		%>
			<tr>
				<td><%=dan%> * <%=i%> = </td>
				<td><%=dan*i%></td>
			</tr>
		<%
			}
		%>			
	</table>

</body>
</html>