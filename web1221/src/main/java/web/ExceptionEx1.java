package web;

public class ExceptionEx1 {
	public static void main(String[] args) {
		test();
		
	}
	static void test() {
		try {
			System.out.println("try");
			System.exit(0);  // 자바 강제종료 
			throw new Exception(); 
		} catch (Exception e) {
			System.out.println("catch");
		} finally {
			System.out.println("finally");
		} 
	}
	// try 출력 
}
