<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.Card" %>
<%
	// 52장의 카드를 초기화해야함
	Card[] deck = new Card[52]; //index 0 ~51	
	
	
	// [0]		1번 		spade
	// [1] 		2번 		spade 
	// ...
	// [12] 	13번 	spade
	// [13] 	1번 		diamond
	// ...
	// [51]		13번 	clover
	
	// 초기화 알고리즘
	for(int i=0; i<deck.length; i=i+1){
		
		deck[i] = new Card(); // new라는연산자가 만들어주는 초기값 -> 디폴트값 deck[0].kind =null/ deck[0].num =0
		// deck[0] = new Card(); ... deck[51] = new Card(); 
		
		// 무늬지정 알고리즘
		if(i/13 == 0){ // i : 0~12 /13나누기 몫이 0 --> spade
			deck[i].kind = "spade";
		} else if(i/13 == 1) { // i : 13~25 /13나누기 몫이 1 --> diamond
			deck[i].kind = "diamond";
		} else if(i/13 == 2) { // i : 26~38 /13나누기 몫이 2--> heart
			deck[i].kind = "heart";
		} else if(i/13 == 3) { // i : 39~51 /13나누기 몫이 3 --> clover
			deck[i].kind = "clover";
		}
		
		
		//번호지정 알고리즘
		// i : 0 -> 1  %13 -> 0
		// i : 1 -> 2  %13 -> 1
		//...
		// i : 12 -> 13
		// i : 13 -> 1
		// ... 
		// i : 25 -> 13
		// i : 26 -> 1
		// ...
		// i : 51 -> 13 
		deck[i].num = (i%13)+1;
		
	
	}
	/*
	 //디버깅
	for(int i=0; i<deck.length; i=i+1) {
		System.out.println("["+i+"]"+deck[i].kind + "("+deck[i].num+")");

	} 
	*/
	
	for(int i=0; i<10000; i=i+1){
		Card temp = deck[0];// 0번째 카드를 복사해두고
		int r = (int)(Math.random() * 52) ; // 0~51 임의의 숫자가 r 
		deck[0] = deck[r];// 0번째 카드에는 r번째의 카드를 복사
		deck[r] = temp; // 복사해둔 0번째의 카드를 r번째의 카드에 복사 -> 0번째와 r번째가 교환됨
	}
	/*
	//섞기후 디버깅
	for(int i=0; i<deck.length; i=i+1) {
		System.out.println("["+i+"]"+deck[i].kind + "("+deck[i].num+")");
	}
	*/
	int playerCount = Integer.parseInt(request.getParameter("playerCount"));
	int cardPerPlayer = 3;
	
	/*	
	for(int i=0; i<playerCount; i=i+1){ 
		//i=1 첫번째 player 카드 (deck 카드의 0,1,2), i=2 두번째 player 카드 (3,4,5) 
		System.out.println(i+"번째 참가자의 카드(3장)");
		for(int j=0; j<cardPerPlayer; j=j+1){
			System.out.println(deck[j+(i*3)].kind +" " + deck[j+(i*3)].num);
		}
		System.out.println("--------------------------------------------");
	}
	*/
	
	//for(for)인 중복 for보다 단일 for문으로 로직을간단하게 표현 
	//점수계산
	// 3장의 합이 21을 초과하면 게임오버 21에 가장 가까운 합이 승리 
	// 11,12,13 -> 10
	for(int i=0; i<playerCount; i=i+1){
		int sum = 0;
		for(int j=0; j<cardPerPlayer; j=j+1){
			int temp = 0;
			//11,12,13 -> 10
			if(deck[j+(i*3)].num == 11 || deck[j+(i*3)].num == 12 || deck[j+(i*3)].num == 13 ){
				temp = 10;	
			} else{
				temp = deck[j+(i*3)].num;
			}
			//1->11			
			sum = sum + temp;	
	}	
	System.out.println(i+"번째 참가자 합 :"+ sum);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//출력
	for(int i=0; i<playerCount*cardPerPlayer; i=i+1){
		System.out.println(deck[i].kind + " " + deck[i].num);
%>
		<img src = "<%=request.getContextPath()%>/img/<%=deck[i].kind+deck[i].num %>.jpg">
<%		
		if((i+1)%cardPerPlayer == 0){
%>
	<br>
<%		
		}
	}
%>
<div>
<% for(int i=0; i<playerCount; i=i+1){
		int sum = 0;
		for(int j=0; j<cardPerPlayer; j=j+1){
			int temp = 0;
			//11,12,13 -> 10
			if(deck[j+(i*3)].num == 11 || deck[j+(i*3)].num == 12 || deck[j+(i*3)].num == 13 ){
				temp = 10;	
			} else{
				temp = deck[j+(i*3)].num;
			}
			//1->11			
			sum = sum + temp;	

		}
%>
 	<h2><%=(i+1)+"번째 플레이어"+ sum + "입니다."%></h2>	

<%	
}
%>
</div>
<div>
	<span style = "color:red;">21</span>을 초과하신분은 탈락입니다. <br>
	<span style = "color:red;">21</span>에 더가까우신분이 승자입니다.
</div> 		
</body>
</html>