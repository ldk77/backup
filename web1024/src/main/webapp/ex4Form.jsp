<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./ex4.jsp" method="post">
		<div>
			나이 : 
			<input type= "number" name ="age">		
		</div>
		<div>
			성별:
			<input type= "radio" name= "gender" value= "M">남
			<input type= "radio" name= "gender" value= "F">여	
		</div>		
		<button type= "submit">전송</button>
	</form>
	

</body>
</html>