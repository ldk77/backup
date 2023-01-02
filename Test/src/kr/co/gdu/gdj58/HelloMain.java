package kr.co.gdu.gdj58;
import kr.co.gdu.gdj58.vo.Card;

//접근제한자
//public(전부오픈), protected, 아무것도없음, private(절대오픈x)

//클래스 역할
// 1) 데이터타입
// 2 매서드의 상자 
// 1)+2)
// 퍼블릭클래스는 하나만 가능 
public class HelloMain { // 2) 매서드의 상자
	//매서드
	public static void main(String[] args) {
		System.out.println("hello");
		kr.co.gdu.gdj58.vo.Card card = new kr.co.gdu.gdj58.vo.Card();
		card.kind = "spade";
		card.num = 1;
		System.out.println(card.kind + "("+ card.num +")");
		
		String name = "구디";
		int age = 15;
		System.out.printf("안녕하세요\n");
		System.out.printf("안녕하세요%s\n", name); // %s라는것은 뒤에있는변수를 출력해달라는것
	
		System.out.println("안녕하세요."+name+"입니다.");
		System.out.printf("안녕하세요. %s입니다. %d년 되었습니다.\n", name, age); //%d는 숫자값 
		/*
		 boyFriend : 필드, 변수, 매서드 등등
		 BoyFriend : 클래스 
		 BOY_ FRIEND : 
		 */
		
		int x = 10;
		x = 11;
		
		//상수는 모두대문자 final int 대문자
	}
}
