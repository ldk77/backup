<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인정보</h1>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>${loginMember.memberId}</td>
		</tr>
		
		<tr>
			<td>이름</td>
			<td>${loginMember.memberName}</td>
		</tr>
	</table>
	<a href="${pageContext.request.contextPath}/LogoutController">로그아웃</a>
</body>
</html>