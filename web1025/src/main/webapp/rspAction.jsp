<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8"); // 보내는곳이 utf-8 로보내니 받는것도 utf-8 인코딩맞추는것
	
	String userRsp = null;
	userRsp = request.getParameter("userRsp");// 사용자 결정 가위,바위,보
	


	String comRsp= null;
	int num = (int)(Math.random() * 3); // 0<x<3 -> 인트로변경해서 소숫점 버림 0,1,2
	if(num == 0){
		comRsp = "가위";
	} else if(num == 1){
		comRsp = "바위";		
	} else if(num == 2 ){
		comRsp = "보";
	}
	// if문만들떄 조건이 가장 짧은것을 상단에 
%>
<h2>결과</h2>
 	
 	<!-- 서로 무엇을 냈는지 확인  -->
 	<div>
 		나:<%=userRsp%>
 	</div>
 	<div>
 		컴퓨터:<%=comRsp %>
 	</div>
 	<p>
 	</p>
<%
	
	if(userRsp.equals(comRsp)) { //비기는 조건
		out.print("비겼습니다");	

	} else if((userRsp.equals("가위") && comRsp.equals("보")) 
			|| (userRsp.equals("바위") && comRsp.equals("가위")) 
			|| (userRsp.equals("보") && comRsp.equals("바위"))
			) { //이기는 조건		
		out.print("이겼습니다");	

	} else { //지는 조건
		out.print("졌습니다");
	}
%>

</body>
</html>

