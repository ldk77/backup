package good; 
import java.util.ArrayList;

// 클래서?
// 1) 데이터 타입 -> 필드(속성, 멤버변수)를 가진다
// 2) 기능(function)의 상자 -> 메서드(멤버함수)를 가진다
// 3) 1) + 2) -> 필드+메서드 -> 메서드에서 필드를 호출 -> this -> 메서드가 메서드를 호출 
//    -> this -> 정보은닉 -> 캡슐화 -> 겟트/셋트
// ※ this : 같은 클래스내의 메서드가 다른 메서드나 필드와 통신할때 사용하는 참조 키워드
public class Car { // 클래스이름과 생성자메서드는 파스칼표현식
	public static int serialNumber; // static 필드 ex) Car.serialNumber
	public static final int SERIAL_NUMBER = 100; // static 상수 필드 ex) Car.SERIAL_NUMBER
	// 상수는 대문자 스네이크 표현식 사용
	
	public int id;
	
	// 1) 메서드(생성자 메서드)
	public Car() { // 디폴트 생성자 -> 생성자 메서드가 클래스내에 없으면 컴파일러에 의해 자동으로 생성된다
		this.id = 0; 
		// 클래스내 필드가 존재한다면 필드값을 초기화 시키는 코드도 컴파일러에 의해 자동으로 생성된다
		// 기본타입 -> 0, 0.0, false, \u0000;, 참조타입 -> null 값으로 자동 초기화
	}
	public Car(int id) { // 일반생성자 
		this.id = id; // 생성자가 매개변수를 가지면 원하는 값으로 필드를 초기화
	}
	// 메서드 매개변수(타입, 갯수, 순서)가 다르면 같은 이름의 메서드 선언 가능 -> 메서드 오버로딩, 생성자 메서드 오버로딩 가능
	
	// 필드명 카멜표현식 사용
	public boolean auto; // 기본타입(8개)의 필드
	public String company; // String 참조타입
	public Integer no; // 랩퍼(박싱) 참조타입 -> 기본타입8개와 동일한 값을 가지는 참조타입  
	// 기본타입->랩퍼타입 자동변환 : 오토박싱 ex) Integer a = 10;
	// 랩퍼타입->기본타입 자동변환 : 오토언박싱 ex) int a = new Integer(10);
	public String[] nickname; // String 참조타입의 배열, 기본타입의 배열 int[] num 도 가능
	public ArrayList<String> nickname2; // 컬레션 참조 타입
	public Tire tire; // 사용자 정의 타입 
	public ArrayList<Tire> tireList; // 사용자정의 컬렉션 타입
	
	
	// 메서드는 카멜표현식
	// static 메서드
	public static void goodeePrint() { // Car.goodeePrint()
		System.out.println("GooDee!"); 
		// this.id 에러! -> static메서드 안에서는this 키워드를 사용할 수 없다. 
		// this는 메서드 호출시 메서드객체를 참조하는 static메서드는 클래스 이름으로 호출
		// Class가 로드되는 시점에 static멤버들은 같이 로드 -> 객체보다 static멤버가 먼저 메모리에 로드
	}
	
	// 일반 메서드
	public void start() { // 매개변수 없는
		System.out.println("출발~"); // Car c = new Car(); c.start();
	}
	public void start(String name) { // 이름은 같지만 매개변수가 있다 -> 오버로딩 
		System.out.println(name+"이(가) 출발"); // Car c = new Car(); c.start();
		System.out.printf("%s 이(가) 출발\n", name); // 자바스크립트에서 백틱사용 `${name} 이(가) 출발`
	}
	
	// 클래스안에 클래스 --> 이너 클래스
	public class InClz {
		public int i;
	}
}

// 같은 파일내 두개의 클래스 선언가능 컴파일시에는 따로 컴파일
class Tire {}
