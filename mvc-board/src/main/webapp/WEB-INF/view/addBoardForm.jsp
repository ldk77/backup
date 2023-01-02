<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 
C -> M -> V 
C -> M ========> redirct =========> 다른 컨드롤러 호출 
C ->V

Model2에서는 모든 시작은 컨트롤러부터 
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 입력</h1>
	<form method="post" action="<%=request.getContextPath()%>/jsp/jspAddBoardAction.jsp">
		<table border="1">
			<tr>
				<td>title</td>
				<td>
					<input type="text" name="title">
				</td>
			</tr>
			<tr>
				<td>content</td>
				<td>
					<textarea rows="5" cols="50" name="content"></textarea>
				</td>
			</tr>
		</table>
		<button type="submit">글입력</button>
	</form>
	
</body>
</html>
