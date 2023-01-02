<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 1
	if(session.getAttribute("loginMemberId") != null) {
		// 로그인 되지 않은 상태
		response.sendRedirect(request.getContextPath()+"/memberIndex.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm</title>
	<style>
	td { padding: 10px; }
	h1,div, table, tr, td, button {text-align : center;}	
	</style>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="<%=request.getContextPath()%>/loginAction.jsp" method="post">
		<table class="table table-bordered">
			<tr>
				<td>회원아이디</td>
				<td><input type="text" name="memberId"></td>
			</tr>
			<tr>
				<td>회원패스워드</td>
				<td><input type="password" name="memberPw"></td>
			</tr>			
		</table>
		<button type = "submint">로그인</button>	
	</form>
	<div>
		<a href="<%=request.getContextPath()%>/insertMemberForm.jsp">회원가입</a>
		<!--insertMemberForm.jsp,insertMemberAction.jsp  -->
	</div>
</body>
</html>