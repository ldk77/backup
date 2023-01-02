<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%
	// 오늘
	Calendar today = Calendar.getInstance();
	
	System.out.println(today);
	
	// 이번달의 1일 
	Calendar todayFirstDate = Calendar.getInstance();
	
	todayFirstDate.set(Calendar.DATE, 1);
	int firstDay = todayFirstDate.get(Calendar.DAY_OF_WEEK);//
	System.out.println(todayFirstDate);
	System.out.println(firstDay);
	
	// 이번달의 마지막일
	Calendar todayLastDate = Calendar.getInstance();
	int lastNum = today.getActualMaximum(Calendar.DATE);
	todayLastDate.set(Calendar.DATE, lastNum);
	System.out.println(todayLastDate);
	int lastDay = todayLastDate.get(Calendar.DAY_OF_WEEK);
	System.out.println(lastDay);
	
	int startBlankCnt = firstDay-1; // 1일의 요일로 구할수있다 
	int endBlankCnt = 0;
	if((startBlankCnt + lastNum) % 7 != 0){
		endBlankCnt = 7-lastDay;
	}
	int tdCnt = startBlankCnt + lastNum + endBlankCnt; 
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>November</title>
	<!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<div class="container">
	<div class="bg-primary text-white rounded">
	<h2>
		<%=today.get(Calendar.YEAR)%>년
		<%=today.get(Calendar.MONTH) + 1 %>월
	</h2>
	
	</div>
	<div>
		<a href ="">이전달</a>
		<a href ="">다음달</a>
	</div>
	
	<table class="table table-bordered">		
		<tr>
			<%
				for(int i=1; i<=tdCnt; i++){
			%>
					<td>
					<%
						if((i-startBlankCnt)>0 && (i-startBlankCnt)<=lastNum){
					%>
						<%=i-startBlankCnt%>
					<%	
						} else {
					%>
						&nbsp;
					<%		
						}
					%>
					</td>
			<%
					if(i != tdCnt && i%7 == 0) {
			%>
					</tr><tr>
			<%			
					}
				}
			%>
		</tr>
	</table>
</div>
</body>
</html>