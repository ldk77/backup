<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, td {
		border: 1px solid pink;
	}
</style>
</head>
<body>
	<h1>로그인</h1>
	<form method="post" action="./loginAction.jsp">
		<table>
			<tr>
				<td>번호</td>
				<td><input type="number" name="no"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">로그인</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
