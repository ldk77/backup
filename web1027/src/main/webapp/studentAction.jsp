<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.Student" %>
<%
	Student[] db = null;
	db = new Student[24]; // new Student() 24번?
	for(int i=0; i<db.length; i=i+1) {
		db[i] = new Student();
	}

    // 데이터 초기화   ... 인덱스 [0] ~ [23]
   db[0].no = 1;
   db[0].name = "강지훈";
   db[0].age = 30;
   db[0].gender = "남자";
   db[0].address = "안산시";
   
   db[1].no = 2;
   db[1].name = "곽효상";
   db[1].age = 32;
   db[1].gender = "남자";
   db[1].address = "군포시";
   
   db[2].no = 3;
   db[2].name = "김계현";
   db[2].age = 31;
   db[2].gender = "여자";
   db[2].address = "서울시";
   
   db[3].no=4;
   db[3].name="김도희";
   db[3].age=29;
   db[3].gender="여자";
   db[3].address="시흥시";
   
   db[4].no = 5;
   db[4].name = "김민송";
   db[4].age = 26;
   db[4].gender = "여자";
   db[4].address = "인천시";
   
   db[5].no = 6;
   db[5].name = "김설";
   db[5].age = 29;
   db[5].gender = "여자";
   db[5].address = "인천시";
   
   db[6].no = 8;
   db[6].name = "김수곤";
   db[6].age = 27;
   db[6].gender = "남자";
   db[6].address = "인천시";
   
   db[7].no = 9;
   db[7].name = "김태환";
   db[7].age = 27;
   db[7].gender = "남자";
   db[7].address = "서울시";
   
   db[8].no = 10;
   db[8].name = "민태희";
   db[8].age = 29;
   db[8].gender = "여자";
   db[8].address = "서울시";
   
   db[9].no = 12;
   db[9].name = "양인범";
   db[9].age = 30;
   db[9].gender = "남자";
   db[9].address = "인천시";
   
   db[10].no = 13;
   db[10].name = "이가은";
   db[10].age = 23;
   db[10].gender = "여자";
   db[10].address = "서울시";
   
   db[11].no = 14;
   db[11].name = "이가을";
   db[11].age = 26;
   db[11].gender = "여자";
   db[11].address = "광명시";
   
   db[12].no = 15;
   db[12].name = "이득규";
   db[12].age = 30;
   db[12].gender = "남자";
   db[12].address = "부천시";
   
   db[13].no = 16;
   db[13].name = "이동규";
   db[13].age = 30;
   db[13].gender = "남자";
   db[13].address = "서울시";
   
   db[14].no=17;   
   db[14].name="이지원";
   db[14].age= 26;
   db[14].gender="남자";
   db[14].address="양천구";
   
   db[15].no = 18;
   db[15].name = "이호민";
   db[15].age = 29;
   db[15].gender = "남자";
   db[15].address = "시흥시";

   db[16].no = 19;
   db[16].name = "장준영";
   db[16].age = 28;
   db[16].gender = "남자";
   db[16].address = "광명시";
   
   db[17].no = 20;
   db[17].name = "정성민";
   db[17].age = 31;
   db[17].gender = "남자";
   db[17].address = "광명시";
   
   db[18].no=21;
   db[18].name="조건희";
   db[18].age=27;
   db[18].gender="남자";
   db[18].address = "서울시";
   
   db[19].no = 22;
   db[19].name = "조영우";
   db[19].age = 27;
   db[19].gender = "남자";
   db[19].address = "인천시";
   
   db[20].no = 23;
   db[20].name = "진민구";
   db[20].age = 29;
   db[20].gender = "남자";
   db[20].address = "서울시";
   
   db[21].no = 23;
   db[21].name = "최은서";
   db[21].age = 21;
   db[21].gender= "여자";
   db[21].address = "안산시";
   
   db[22].no = 24;
   db[22].name = "최정헌";
   db[22].age = 26;
   db[22].gender = "남자";
   db[22].address = "서울";
   
   db[23].no = 25;
   db[23].name = "황현정";
   db[23].age = 27;
   db[23].gender = "여자";
   db[23].address = "서울시";
    // 디버깅
	System.out.println(db.length + "<-- db.length");
	for(Student s : db) {
		System.out.println(s.name+"("+s.age+")"+ " "+s.address);
	}

	request.setCharacterEncoding("utf-8");
	
	// 로그인 알고리즘 구현
	int no = Integer.parseInt(request.getParameter("no"));
	String name = request.getParameter("name");
	
	Student loginStudent = null;
	
	for(Student s : db) {
		if(s.no == no && s.name.equals(name)) {
			// 로그인 성공
			loginStudent = s;
			break;
		} 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, td {
		border: 1px solid pink;
	}
</style>
</head>
<body>
	<%
		if(loginStudent == null) {
	%>
			<div>로그인 실패</div>
	<%		
		} else {
	%>
			<table>
				<tr>
					<td>번호</td>
					<td><%=loginStudent.no%></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><%=loginStudent.name%></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><%=loginStudent.age%></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><%=loginStudent.gender%></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><%=loginStudent.address%></td>
				</tr>
			</table>
	<%		
		}
	%>
</body>
</html>