package js1220;

public class Q08 {
	static String result = "1"; 
	
	public static void main(String[] args) {
		method(0);
		System.out.println(result); // 1245
	}
	
	public static void method(int x) {
		try {
			x /= x; // 0/0 - > 자바에서 정수를 0으로 나누는것 허락 x ArithmeticException 출력 
		} catch (ArithmeticException e) {
			result += "2"; // -> result = result + 2 따움표안에있으므로 문자열로처리 12 
		} catch (Exception e) {
			result += "3"; // 다중 catch try 블록에서 해당 타입의 예외가 발생하면 catch 블록을 실행하도록 되어있습니다. 
							//catch 블록이 여러 개라고 해도 단 하나의 catch 블록만 실행됩니다. 
		} finally {
			 result += "4"; // finally 구문은 예외처리가 발생여부를 떠나 무조건 실행하도록 하는 구문입니다.
			 				// result = result +4 따움표안에있으므로 문자열로처리 124
		}
		result += "5";  // result = result +5 따움표안에있으므로 문자열로처리 1245
	}
	
}

