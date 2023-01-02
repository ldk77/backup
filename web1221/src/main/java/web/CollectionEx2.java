package web;

import java.util.*;

public class CollectionEx2 {
	public static void main(String[] args) {
		// stcak 클래스 
		// push로 순서대로 쌓는다 0,1,2 순 
		// pop는 쌓여있는것을 마지막순부터 꺼냄 2,1,0 
		Stack st = new Stack();
		// Queue 클래스 먼저들어간 자료가 먼저 나오는 구조 FIFO구조 
		// queue에 값을 추가하고싶으면 add,offer 메서드활용 
		// poll 첫번재 값을 반환하고 제거 비어있다면 null 0,1,2
		Queue q = new LinkedList();
		
		st.push("0");
		st.push("1");
		st.push("2");
		
		q.offer("0");
		q.offer("1");
		q.offer("2");
		
		while (!st.empty()) { // 스택 st 가 비어있지않으면 
			System.out.print(st.pop());
		}
		System.out.print("/");
		while(!q.isEmpty()) { // Queue q가 비어있지않으면
			System.out.print(q.poll()); // 210/012출력
		}
	}
}
