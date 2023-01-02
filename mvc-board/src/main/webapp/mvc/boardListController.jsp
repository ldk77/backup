<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "model1.vo.*" %>
<%@ page import = "model1.service.*" %>

<%
	BoardService boardService = new BoardService();
	ArrayList<Board> list = boardService.getBoardList();
	
	//view와 공유할 모델데이터 설정 
	request.setAttribute("list", list);
	
	// view 연결
	// RequestDispatcher 1) include 2) forward
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/mvcBoardList.jsp");
	rd.forward(request, response);
	
	// 컨트롤러 JSP로 만들 이유가 없다 -> 서블릿으로 만드라
%>