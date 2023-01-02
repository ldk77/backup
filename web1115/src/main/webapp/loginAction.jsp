<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 1) 요청분석 : 로그인 사용할 id/pw 입력받아사용
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// 2) 요청처리 : 1)의 내용과 db의 내용을 비교 
	String dbUserId = "goodee"; // 임의로 설정 추후 db에서 가져옴
	String dbUserPw = "1234";
	
	String result = null;
	if(id.equals(dbUserId) && pw.equals(dbUserPw)){
		result = "success";
		// 로그인 성공 정보를 session공간에 저장해야함 
		session.setAttribute("x", "y");//x에y를 넣고싶다 그런데 다른페이지에서 보고싶을떄 x = "y"
	}else{
		result = "fail";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>로그인 성공 유무 : <span><%=result%></span></div>
	<div><a href="<%=request.getContextPath()%>/loginTest.jsp">로그인확인 페이지</div>
</body>
</html>