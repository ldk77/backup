package ex2;

import java.util.*;

//1) public 클래스를 만들고 public static main()메서드 안에 코드 구현
public class MainTest {
	public static void main(String[] args) {
		// 명령어 : 변수생성 값대입, 제어문,명령어의들의 묶음이름(매서드)으로 호출
		// 변수안에 값: 값(숫자, 문자1자, true/false), 참조값
		// 클래스 만드는이유 1. 내가원하는 데이터가없음 2. 명령어를 묶으려고 
		int x = 10; //  =연산자 우측 : 값,표현식
		
		String str ="hello";
		String str2 = new String("hello"); // java.lang.String
		
		int[] arr = new int[] {1, 7, 2}; // 배열이 중요하지만 배열사용거의안함 why? 정적이여서
		ArrayList<Integer> list = new ArrayList<Integer>();
	}
}


// 2) 톰켓세팅 -> DWP -> jsp파일안에 코드 구현 톰켓(back-end, 웹서버 + 웹애플리케이션(WAS))