<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.*" %>

<%
	// 유효성 검사 : 이 페이지 코드 계속 실행할건지 
	// 로그인 되어있지않으면 로그인페이지로 
	if(session.getAttribute("loginMember") == null){
		//이미 로그인 되어있으니 웹브라저에서 다시 main.jsp 재요청
		response.sendRedirect(request.getContextPath()+"/loginForm.jsp" );
		return; 
	}

	// 로그인 되어있다면 세션정보를 가져온다
	//session.getAttribute("loginMember");
	Member loginMember = (Member)(session.getAttribute("loginMember"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div> <%=loginMember.getMemberName() %>님 반갑습니다</div>
	<div><a href="<%=request.getContextPath() %>/logout.jsp">로그아웃</a></div>
	<div><a href="<%=request.getContextPath() %>/deleteMember.jsp">회원탈퇴</a></div>	
</body>
</html>