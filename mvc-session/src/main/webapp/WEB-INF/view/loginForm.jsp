<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>LOGIN</h1>
	<form action="${pageContext.request.contextPath}/LoginActionController" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" id="memberId" name="memberId">
					</td>
				</tr>
					<tr>
					<td>패스워드</td>
					<td>
						<input type="text" id="memberPw" name="memberPw">
					</td>
				</tr>			
			</table>
			<button type="submit">로그인</button>
		</form>
</body>
</html>