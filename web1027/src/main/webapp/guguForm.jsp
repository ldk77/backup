<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<form action="./guguResponse.jsp" method="post">
			<div>	
				<select name="dan">
					<%
						for(int i=2; i<10; i=i+1){
					%>
							<option value="<%=i%>">
								<%=i %>
							</option>
					<% 
						}
					%>	
				</select>			
			</div>
			<button type = "submit">출력</button>
		</form>
	</body>
</html>