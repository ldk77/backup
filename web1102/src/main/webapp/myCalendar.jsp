<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>	
<%
	int year = 0 ;
	int month = 0 ;
	
	// 년도,월 중 하나라도 지정되지않아 넘겨오지않으면 오늘날짜 기준으로 월달력 출력
	if(request.getParameter("year") == null || request.getParameter("month") == null ) {
		Calendar today = Calendar.getInstance();
		year = today.get(Calendar.YEAR);
		month = today.get(Calendar.MONTH);
	} else {
		//출력하고자 하는 달력의 연도와 월 
		year = Integer.parseInt(request.getParameter("year")); // 2022,...
		month = Integer.parseInt(request.getParameter("month")); // 0~11		
		
		// 이전달 클릭 year, month-1 /다음달 클릭 year, month+1
		//-1 ->11 year-1 , 12 ->0 year+1
		if(month == -1){
			month = 11;
			year = year-1;
		}
		if(month == 12){
			month = 0;
			year = year+1;
		}
	}
	// 출력하고자 달의 1일 격체 + 1일 요일 + 마지막 날짜
	Calendar firstDate = Calendar.getInstance();	
	firstDate.set(Calendar.YEAR, year);
	firstDate.set(Calendar.MONTH, month);
	firstDate.set(Calendar.DATE, 1);
	int firstDay= firstDate.get(Calendar.DAY_OF_WEEK);// 1일의 요일정보 (숫자 1: 일 2: 월...)
	int lastDate = firstDate.getActualMaximum(Calendar.DATE);
	
	// 출력 알고리즘 (td의 개수 구하기)
	int startBlankCnt = firstDay -1;
	int endBlankCnt = 0;
	if((startBlankCnt+lastDate)%7 !=0 ){
		endBlankCnt = 7 - ((startBlankCnt+lastDate)%7);
	}
	int tdCnt = startBlankCnt+lastDate+endBlankCnt; 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<style> 
	div,table, tr, td {text-align : center;}
</style>

</head>
<body>
	<div class="container-fluid">
		<div class="container p-5 my-5 bg-dark text-white">
			<h2><%=year%>년 <%=month+1%>월</h2>	
		</div>
		
		<span>
			<a style= "float: left;" href="<%=request.getContextPath()%>/myCalendar.jsp?year=<%=year%>&month=<%=month-1%>">
			<button type="button" class="btn btn-danger">이전달</button>
			</a>
		</span>
		<span>
			<a style= "float: right;" href="<%=request.getContextPath()%>/myCalendar.jsp?year=<%=year%>&month=<%=month+1%>">
			<button type="button" class="btn btn-danger">다음달</button>
			</a>
		</span>
			
	</div>
	<div class="table-responsive">
		<table class = "table table-bordered" >
			<tr class = "table table-info">
				<td><span style="color: #ff0000">일</span></td>
				<td>월</td>
				<td>화</td>
				<td>수</td>
				<td>목</td>
				<td>금</td>
				<td><span style="color: #0000ff">토</span></td>
				<tr>
			<%
				for(int i=1; i<=tdCnt; i++) {
					if(i%7 == 0){ //i기준 일요일 0,7,14...
			%>
				<td style="color: #ff0000">
			<%
				} else if(i%7 == 1) {//i기준 토요일 6,13...
			%>
				<td style="color: #0000ff">
			<%
				} else {
			%>
				<td>
			<%
				}
					if((i-startBlankCnt)>0 && (i-startBlankCnt)<=lastDate) { // 일 출력
			%>
						<%=i-startBlankCnt %>
			<%
					} else {
			%>
						&nbsp;
			<%		
					}
			%>
				</td>
			<%
				if(i!=tdCnt && i%7==0) {							
			%>
					</tr><tr>
			<%
					}
				}
			%>
		</tr>
	</table>
</div>
	<!-- 
		1. bootstrap 적용
		2. 첫번째 일 월 화 수 목 금 토
		3. 토요일 파란색 / 일요일 빨간색
	 -->

</body>
</html>