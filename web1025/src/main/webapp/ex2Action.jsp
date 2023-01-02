<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String gender = request.getParameter("gender");
	String city = request.getParameter("city");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>일반적인 출력</h2>
		<div>id : <%=id%></div>
		<div>gender : <%=gender%></div>
		<div>city : <%=city%></div>
	</div>
	
	
	<div>
		<h2>폼형태로 출력</h2>
		<div>
			ID : <input type="text" name="id" value="<%=id%>" readonly="readonly" ><!--수정못하게하려고 readonly -->
		</div>
		<div>
			<% 
				if(gender.equals("M")){
			%> 
				<!-- checked는 디폴트값으로 체크되어있음 -->
				<input type="radio" name="gender" value="M" checked="checked">남 
				<input type="radio" name="gender" value="F">여
			<%
				}else{
			%>	
				<input type="radio" name="gender" value="M">남 
				<input type="radio" name="gender" value="F" checked="checked">여
			<% 
				}		
			%>				
		</div>
		<div>
			<!-- disabled 수정불가능 -->
			<select disabled="disabled">
			<%
				if(city.equals("서울")){
			%>			
				<option value="서울""selected="selected">서울</option>
				<option value="부산">부산</option>
				<option value="인천">인천</option>	
			<%
				}else if(city.equals("부산")){
			%>		
				<option value="서울">서울</option>
				<option value="부산" "selected="selected">부산</option>
				<option value="인천">인천</option>	
			<% 
				}else{
			%>		
					<option value="서울">서울</option>
					<option value="부산">부산</option>
					<option value="인천" "selected="selected">인천</option>	
			
			<% 
				}
			%>	
					
			</select>
		</div>
	</div>
</body>
</html>