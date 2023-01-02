<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.Pirate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, td{
		border:1px solid;
		border-collapse: collapse;
		tesxt-align: center;	
	}
</style>
</head>
<body>
<%
	//데이터 초기화
	ArrayList<Pirate> strawHatList = new ArrayList<Pirate>();

	//선원 추가
	Pirate luffy = new Pirate();
	luffy.name = "Monkey D.Luffy";
	luffy.age = 19;
	luffy.gender = "남자";
	luffy.home = "이스트블루";
	luffy.picture = "luffy.png";
	luffy.devilFruit = true;
	
	Pirate zoro = new Pirate();
	zoro.name = "Roronoa Zoro";
	zoro.age = 19;
	zoro.gender = "남자";
	zoro.home = "이스트블루";
	zoro.picture = "zoro.png";
	zoro.devilFruit = false;
	
	Pirate nami = new Pirate();
	nami.name = "Nami";
	nami.age = 18;
	nami.gender = "여자";
	nami.home = "이스트블루";
	nami.picture = "nami.png";
	nami.devilFruit = false;
	
	Pirate usopp = new Pirate();
	usopp.name = "Usopp";
	usopp.age = 17;
	usopp.gender = "남자";
	usopp.home = "이스트블루";
	usopp.picture = "usopp.png";
	usopp.devilFruit = false;
	
	Pirate sanji = new Pirate();
	sanji.name = "Sanji";
	sanji.age = 19;
	sanji.gender = "남자";
	sanji.home = "노스블루";
	sanji.picture = "sanji.png";
	sanji.devilFruit = false;
	
	Pirate chopper = new Pirate();
	chopper.name = "Tony-Tony Chopper";
	chopper.age = 5;
	chopper.gender = "남자";
	chopper.home = "위대한항로";
	chopper.picture = "chopper.png";
	chopper.devilFruit = true;
	
	Pirate robin = new Pirate();
	robin.name = "Robin";
	robin.age = 28;
	robin.gender = "여자";
	robin.home = "웨스트블루";
	robin.picture = "robin.png";
	robin.devilFruit = true;
	
	Pirate franky = new Pirate();
	franky.name = "Franky";
	franky.age = 34;
	franky.gender = "남자";
	franky.home = "사우스블루";
	franky.picture = "franky.png";
	franky.devilFruit = false;
	
	Pirate brook = new Pirate();
	brook.name = "Brook";
	brook.age = 88;
	brook.gender = "남자";
	brook.home = "웨스트블루";
	brook.picture = "brook.png";
	brook.devilFruit = true;
	
	Pirate jinbei = new Pirate();
	jinbei.name = "Jinbei";
	jinbei.age = 44;
	jinbei.gender = "남자";
	jinbei.home = "용궁왕국";
	jinbei.picture = "jinbe.png";
	jinbei.devilFruit = false;
	
	//ArrayList에 넣기
	strawHatList.add(luffy);
	strawHatList.add(zoro);
	strawHatList.add(nami);
	strawHatList.add(usopp);
	strawHatList.add(sanji);
	strawHatList.add(chopper);
	strawHatList.add(robin);
	strawHatList.add(franky);
	strawHatList.add(brook);
	strawHatList.add(jinbei);
	
	// 요청값에 따라 분기 코드
	request.setCharacterEncoding("utf-8");
	
	String gender = request.getParameter("gender");
	String devilFruit = request.getParameter("devilFruit");
	String home = request.getParameter("home");
	String age = request.getParameter("age");
	String ageSort = request.getParameter("ageSort");
	
	if((gender!=null && gender.equals("")) 
			|| (devilFruit!=null && devilFruit.equals("")) 
			|| (home!=null && home.equals("")) 
			|| (age!=null && age.equals("")) 
			|| (ageSort!=null && ageSort.equals(""))) {
		// 전체출력
		System.out.println("전체");
%>
		<table >
				<tr>
					<td>이름</td>
					<td>나이</td>
					<td>성별</td>
					<td>고향</td>
					<td>사진</td>
					<td>악마의 열매 능력 유무</td>
				</tr>
<%
			for(Pirate p : strawHatList) {
%>
				<tr>
					<td><%=p.name%></td>
					<td><%=p.age %> </td>
					<td><%=p.gender %></td>
					<td><%=p.home %></td>
					<td>
						<img src="<%=request.getContextPath()%>/img/<%=p.picture %>" width="200px" height="200px">
					</td> <!-- img -->
					<td>
<%
					String imgName = "";
					if(p.devilFruit) {
						imgName = "devilFruit.png";
						} else {
						imgName = "noDevilFruit.png";
						}
%>
						<img src="<%=request.getContextPath()%>/img/<%=imgName %>" width="200px" height="200px">
					</td>
				</tr>
<%
			}
%>
			</table>

<%		
				} else if (gender !=null && gender.equals("남자")) {
				// 남자만 출력
%>
				<table>
					<tr>
						<td>이름</td>
						<td>나이</td>
						<td>성별</td>
						<td>고향</td>
						<td>사진</td>
						<td>악마의 열매 능력 유무</td>
					</tr>
<%
					for(Pirate p : strawHatList) {
						if(p.gender.equals(gender) == true) { 
%>
						<tr>
							<td><%=p.name%></td>
							<td><%=p.age %> </td>
							<td><%=p.gender %></td>
							<td><%=p.home %></td>
							<td>
								<img src="<%=request.getContextPath()%>/img/<%=p.picture %>" width="200px" height="200px">
							</td>  
							<td>
<%
								String imgName = "";
								if(p.devilFruit) {
									imgName = "devilFruit.png";
								} else {
									imgName = "noDevilFruit.png";
								}
%>
								<img src="<%=request.getContextPath()%>/img/<%=imgName %>" width="200px" height="200px">
							</td>
						</tr>
<%
						} 
					}
%>
					</table>
<%		
							} else if (gender !=null && gender.equals("여자")) {
								//여자
%>
					<table >
						<tr>
							<td>이름</td>
							<td>나이</td>
							<td>성별</td>
							<td>고향</td>
							<td>사진</td>
							<td>악마의 열매 능력 유무</td>
						</tr>
<%
							for(Pirate p : strawHatList) {
								if(p.gender.equals("여자")) {
%>
						<tr>
							<td><%=p.name%></td>
							<td><%=p.age %> </td>
							<td><%=p.gender %></td>
							<td><%=p.home %></td>
							<td>
								<img src="<%=request.getContextPath()%>/img/<%=p.picture %>" width="200px" height="200px">
							</td> <!-- img -->
							<td>
<%
									String imgName = "";
								if(p.devilFruit) {
									imgName = "devilFruit.png";
								} else {
									imgName = "noDevilFruit.png";
							}
%>
								<img src="<%=request.getContextPath()%>/img/<%=imgName %>" width="200px" height="200px">
							</td>
						</tr>
<%
						} 
					}
%>
					</table>		

<%
					} else if(devilFruit!=null) {
%>						
						<table >
						<tr>
							<td>이름</td>
							<td>나이</td>
							<td>성별</td>
							<td>고향</td>
							<td>사진</td>
							<td>악마의 열매 능력 유무</td>
						</tr>
<%						
						boolean boolDevilFruit = false;
						if(devilFruit.equals("열매능력자")) {
							boolDevilFruit = true;
						}
					
						for(Pirate p : strawHatList) {
							if(p.devilFruit == boolDevilFruit) {
%>								
								<tr>
								<td><%=p.name%></td>
								<td><%=p.age %> </td>
								<td><%=p.gender %></td>
								<td><%=p.home %></td>
								<td>
									<img src="<%=request.getContextPath()%>/img/<%=p.picture %>" width="200px" height="200px">
								</td> <!-- img -->
								<td>
<%
										String imgName = "";
									if(p.devilFruit) {
										imgName = "devilFruit.png";
									} else {
										imgName = "noDevilFruit.png";
								}
%>
									<img src="<%=request.getContextPath()%>/img/<%=imgName %>" width="200px" height="200px">
								</td>
							</tr>
<%												
							}
						}
%>						
					</table>
<%					
					} else if(home!=null) { 
%>						
						<table >
						<tr>
							<td>이름</td>
							<td>나이</td>
							<td>성별</td>
							<td>고향</td>
							<td>사진</td>
							<td>악마의 열매 능력 유무</td>
						</tr>
<%							
						
						for(Pirate p : strawHatList) {
							if(p.home.equals(home)) {
%>
								<tr>
								<td><%=p.name%></td>
								<td><%=p.age %> </td>
								<td><%=p.gender %></td>
								<td><%=p.home %></td>
								<td>
									<img src="<%=request.getContextPath()%>/img/<%=p.picture %>" width="200px" height="200px">
								</td> <!-- img -->
								<td>
<%
										String imgName = "";
									if(p.devilFruit) {
										imgName = "devilFruit.png";
									} else {
										imgName = "noDevilFruit.png";
								}
%>
									<img src="<%=request.getContextPath()%>/img/<%=imgName %>" width="200px" height="200px">
								</td>
							</tr>
<%
							}
						}
%>
				</table>
<%									
					} else if(age!=null) {
%>						
						<table >
						<tr>
							<td>이름</td>
							<td>나이</td>
							<td>성별</td>
							<td>고향</td>
							<td>사진</td>
							<td>악마의 열매 능력 유무</td>
						</tr>
<%								
						
						int intAge = Integer.parseInt(age);
						
						for(Pirate p : strawHatList) {
							if(p.age / 10 * 10 == intAge) {
%>
								<tr>
								<td><%=p.name%></td>
								<td><%=p.age %> </td>
								<td><%=p.gender %></td>
								<td><%=p.home %></td>
								<td>
									<img src="<%=request.getContextPath()%>/img/<%=p.picture %>" width="200px" height="200px">
								</td> <!-- img -->
								<td>
<%
										String imgName = "";
									if(p.devilFruit) {
										imgName = "devilFruit.png";
									} else {
										imgName = "noDevilFruit.png";
								}
%>
									<img src="<%=request.getContextPath()%>/img/<%=imgName %>" width="200px" height="200px">
								</td>
							</tr>
<%
							}
						}	
%>							
				</table>					
<%	
					} else if(ageSort != null) {
%>	
						<table >
						<tr>
							<td>이름</td>
							<td>나이</td>
							<td>성별</td>
							<td>고향</td>
							<td>사진</td>
							<td>악마의 열매 능력 유무</td>
						</tr>
<%						// 선택정렬
						for(int i=0; i<strawHatList.size()-1; i++) {
							for(int j=i+1; j<strawHatList.size(); j++) {
								Pirate temp = strawHatList.get(i);
								if(ageSort.equals("asc")) {
									if(strawHatList.get(i).age > strawHatList.get(j).age) {
										strawHatList.set(i, strawHatList.get(j));
										strawHatList.set(j, temp);
									}
								} else if(ageSort.equals("desc")) {
									if(strawHatList.get(i).age < strawHatList.get(j).age) {
										strawHatList.set(i, strawHatList.get(j));
										strawHatList.set(j, temp);
									}
								}
							}
						}
						for(Pirate p : strawHatList) {							
%>
							<tr>
							<td><%=p.name%></td>
							<td><%=p.age %> </td>
							<td><%=p.gender %></td>
							<td><%=p.home %></td>
							<td>
								<img src="<%=request.getContextPath()%>/img/<%=p.picture %>" width="200px" height="200px">
							</td> <!-- img -->
							<td>
<%
									String imgName = "";
								if(p.devilFruit) {
									imgName = "devilFruit.png";
								} else {
									imgName = "noDevilFruit.png";
							}
%>
								<img src="<%=request.getContextPath()%>/img/<%=imgName %>" width="200px" height="200px">
							</td>
						</tr>
<%
						}
					}
%>							
			</table>	
		</body>	
	</html>					


