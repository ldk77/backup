<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>onepieceForm.jsp</title>
</head>
<body>
	<div>
		<form action="<%=request.getContextPath()%>/onepiece.jsp" method="post">
			<fieldset>
			<legend>1. 성별</legend>
				<select name="gender">
					<option value="">전체</option>
					<option value="남자">남자</option>
					<option value="여자">여자</option>
				</select>
				<button type="submit">출력</button>
			</fieldset>
		</form>
	</div>
	
	<div>
		<form action="<%=request.getContextPath()%>/onepiece.jsp" method="post">
			<fieldset>
			<legend>2. 열매</legend>
				<select name="devilFruit">
					<option value="">전체</option>
					<option value="열매능력자">열매능력자</option>
					<option value="열매비능력자">열매비능력자</option>
				</select>
				<button type="submit">출력</button>
			</fieldset>
		</form>
	</div>
	
	<div>
		<form action="<%=request.getContextPath()%>/onepiece.jsp" method="post">
			<fieldset>
			<legend>3. 고향</legend>
				<select name="home">
					<option value="">전체</option>
					<option value="이스트블루">이스트블루</option>
					<option value="웨스트블루">웨스트블루</option>
					<option value="사우스블루">사우스블루</option>
					<option value="노스블루">노스블루</option>
					<option value="위대한항로">위대한항로</option>
					<option value="용궁왕국">용궁왕국</option>
				</select>
				<button type="submit">출력</button>
			</fieldset>
		</form>
	</div>
	
	<div>
		<form action="<%=request.getContextPath()%>/onepiece.jsp" method="post">
			<fieldset>
			<legend>4. 나이별</legend>
				<select name="age">
					<option value="">전체</option>
					<option value="0">0대</option>
					<option value="10">10대</option>
					<option value="20">20대</option>
					<option value="30">30대</option>
					<option value="40">40대</option>
					<option value="50">50대</option>
					<option value="60">60대</option>
					<option value="70">70대</option>
					<option value="80">80대</option>
					<option value="90">90대</option>
				</select>
				<button type="submit">출력</button>
			</fieldset>
		</form>
	</div>
	
	<div>
		<form action="<%=request.getContextPath()%>/onepiece.jsp" method="post">
			<fieldset>
			<legend>5. 나이별 정렬</legend>
				<input type="radio" name="ageSort" value="">전체
				<input type="radio" name="ageSort" value="asc">오름차순
				<input type="radio" name="ageSort" value="desc">내림차순
				<button type="submit">출력</button>
			</fieldset>
		</form>
	</div>
</body>
</html>
