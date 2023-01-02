package good;

public class Student {
	// static 요소는 클래스소스가 로드되는 시점 같이 로드 
	// 일반요소 객체가 만들어지는 시점 메모리에 로드
	
	// static 필드
	public static String ban = "GDJ58";
	// 일반 필드 
	public String name;
	// static 메서드 
	public static void staticMethod() { // Student.staticMethod() this에 어떤객체 바인딩? error! 
		//System.out.println(this.name);
		//this.plainMethod();
		// 그럼에도 불구하고 일반멤버를 호출하고 싶으면,,,,
	}
	//일반 메서드 
	public void plainMethod() {
		System.out.println(Student.ban);
		Student.staticMethod();
	}
}
