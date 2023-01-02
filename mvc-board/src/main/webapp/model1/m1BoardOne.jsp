<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "model1.vo.*" %>
<%@ page import = "model1.service.*" %>
<%@ page import = "model1.dao.*" %>
<%
request.setCharacterEncoding("utf-8");
int no = Integer.parseInt(request.getParameter("no"));

BoardDao boardDao = new BoardDao();
BoardService boardService = new BoardService();
ArrayList<Board> list = boardService.getBoardNoList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for(Board b : list) {
%>
		<table border="1">
			<tr>
				<td>title</td>
				<td><%=b.getTitle()%></td>
			</tr>
			<tr>
				<td>content</td>
				<td><%=b.getContent() %></td>
			</tr>
		</table>
		<div>
			<a href='<%=request.getContextPath()%>/jsp/jspModifyBoardForm.jsp?no=<%=b.getNo()%>'>수정</a>
			<a href='<%=request.getContextPath()%>/jsp/jspRemoveBoard.jsp?no=<%=b.getNo()%>'>삭제</a>
		</div>
<%
	}
%>

</body>
</html>