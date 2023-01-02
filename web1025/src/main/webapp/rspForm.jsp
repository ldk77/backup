<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rspForm.jsp</title>
</head>
<body>
	<form action="./rspAction.jsp" method="post">
	<div>
		<h2>가위바위보</h2>
	</div>	
	<input type="radio" name="userRsp" value="가위">가위.<br>
	<input type="radio" name="userRsp" value="바위">바위.<br>
	<input type="radio" name="userRsp" value="보">보.<br>
	
	<button type="submit">결정</button>
	
	</form>

</body>
</html>