<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- radio , select -->
	<form method="post" action="./ex5Action.jsp">
		<div>
			x : <input type="number" name="x">
		</div>
		
		<div>
			<select name="op">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select>
		</div>
		
		<div>
			y : <input type="number" name="y">
		</div>
		<button type="submit">계산</button>
	</form>
</body>
</html>