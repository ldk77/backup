<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>요청 페이지</h1>
	<form action="./ex2Action.jsp" method="post">
		<div>
			ID : <input type="text" name = "id">
		</div>
		<div>
			GENDER : 
			<input type="radio" name = "gender" value = "M"><label>남</label>
			<input type="radio" name = "gender" value = "F"><label>여</label>
		</div>
		<div>
			<select name="city">
				<option value="">선택</option>
				<option value="서울">서울</option>
				<option value="부산">부산</option>
				<option value="인천">인천</option>
			</select>
		</div>
		<button type="submit">전송</button>
	</form>

</body>
</html>