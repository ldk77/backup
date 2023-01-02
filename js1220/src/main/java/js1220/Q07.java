package js1220;

public class Q07 {
	private static int result = 0;
	private static boolean flag = false; 
	
	public static void main(String[] args) {
		Q07.setResult(10); // x 가 10이므로 method1 실행 
		Q07.display(); // method1 이실행되었으므로 Q07.result = x ->10; temp -> true 로 flag값 true
	}
	
	public static void setResult(int x) {// or연산자는 둘중하나만 참이여도 실행
		Q07.flag = Q07.method1(x) || Q07.method2(); // &&의 경우? 좌변이 false일경우 실행 x 둘다 참일경우 실행
													// mthod1()실행-> x = 10, true 로 -> method2()실행 되어
													// Q07.result*10 -> 100,true값 리턴
													// 최종 출력 100, true
	}
	
	public static boolean method1(int x) {
		System.out.println("method1()실행");
		boolean temp = false;
		if(x>0) {	 // x10으로 ture문 실행
			Q07.result = x;
			temp = true;
		}
		return temp;
	}
	
	public static boolean method2() { 
		System.out.println("method2()실행");
		Q07.result = Q07.result * 10;
		return true;
	}
	
	public static void display() {
		System.out.print(Q07.result + " ");
		System.out.print(Q07.flag);
	}
}
