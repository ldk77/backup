package js1220;

// 다음 코드를 실행시 예상되는 출력결과는 ? 
public class Q03 {
	public static void main(String[] args) {	
		Q03 q = new Q03();
		//정수 변수 a의값 20
		int a = 20;
		//b[1]은 200
		int b[] = {100, 200, 300};
		//change 메소드 호출
		q.change(a,b);
		//display 메소드 호출
		q.display(a,b);
	}	
	void change(int a, int b[]) {
		//a값은 20+10 -> 30
		a = a+10;
		//b[1]의 값은 200+10 ->210
		b[1] = b[1] +10;
	}
	//값을 출력해줄 메소드
	void display(int a, int b[]) {
		//a값 / b[1]의 값을 출력
		//하지만 change메소드를 통해 값을 가져왔지만 a는 30이 아닌 기존 값인 20 b는 더한 값인 210이 출력된다
		//why? a는 값타입으로 기존값인 20으로 가져오고 b는 참조타입으로 값이 아닌 해당 주소값을 가져오기에 변경된 값을 가져온 것
		System.out.print(a+"/"+b[1]);
	}
	
}