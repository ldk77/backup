<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.*" %>
<%@ page import = "dao.*" %>
<%@ page import = "java.util.*" %>
<%
	String searchTitle = request.getParameter("searchTitle");
	
	// 1) rating
	String[] rating = request.getParameterValues("rating");
	System.out.println(rating);
	// 디버깅
	if(rating != null) {
		System.out.println(rating.length + " <-- rating.length");
	}
	
	// 2) fromMinute & toMinute
	int fromMinute = 0;
	int toMinute = 0;
	int releaseYear = 0;
	if(!request.getParameter("releaseYear").equals("")) {
		releaseYear = Integer.parseInt(request.getParameter("releaseYear"));		
	}
	// 둘다 공백값이 아니면 -> 정상적인 숫자값이 넘겨져 왔다면
	if(!request.getParameter("fromMinute").equals("") 
			&& !request.getParameter("toMinute").equals("")) {
		fromMinute = Integer.parseInt(request.getParameter("fromMinute"));
		toMinute = Integer.parseInt(request.getParameter("toMinute"));
	}
	// 디버깅
	System.out.println(fromMinute+", "+toMinute + " <--fromMinute,toMinute");
	
	FilmDao filmDao = new FilmDao();
	ArrayList<Film> list = filmDao.selectFilmList2(searchTitle, rating, fromMinute, toMinute, releaseYear);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>검색결과</h1>
	<table border="1">
		<tr>
			<th>필름 제목</th>
			<th>필름 등급</th>
			<th>필름 상영시간</th>
			<th>필름 출시년도</th>
		</tr>
		<%
			for(Film f : list) {
		%>
				<tr>
					<td><%=f.getTitle()%></td>
					<td><%=f.getRating()%></td>
					<td><%=f.getLength()%></td>
					<td><%=f.getReleaseYear() %></td>
				</tr>
		<%		
			}
		%>
	</table>
</body>
</html>
